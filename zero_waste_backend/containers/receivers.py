from typing import List

import proto_socket_django as psd
from django.db.models import QuerySet

import proto.messages as pb
from containers.models import RContainer
from containers.savings_calculator import SavingsCalculator
from sellers.models import Seller


class ContainersReceiver(psd.FPSReceiver):
    @psd.receive(auth=False)
    def get_home_info(self, message: pb.RxGetHomeInfo):
        containers: QuerySet[RContainer] = RContainer.objects.filter(nfc_id__in=message.proto.nfc_ids or [])
        response = pb.TxHomeInfo()
        response.proto.food_g = sum([c.weight_sum_g for c in containers])
        response.proto.co2_saved_g = SavingsCalculator.g_co2(response.proto.food_g)
        response.proto.waste_saved_g = SavingsCalculator.g_waste(response.proto.food_g)
        response.proto.n_rewards = sum([c.reward_set.count() for c in containers])
        response.proto.n_containers = containers.count()
        self.consumer.send_message(response)

    @psd.receive(auth=False)
    def load_container_info(self, message: pb.RxLoadRContainerInfo):
        # fixme - pagination
        container: RContainer = RContainer.objects.filter(nfc_id=message.proto.nfc_id).first()
        if not container:
            return psd.FPSReceiverError('Container does not exist')
        response = pb.TxRContainerInfo()
        response.proto = container.get_info()
        self.consumer.send_message(response)

    @psd.receive(auth=False)
    def scan_container(self, message: pb.RxScanRContainer):
        # todo - validate nfc_id
        container: RContainer = RContainer.objects.get_or_create(
            nfc_id=message.proto.nfc_id,
            defaults={
                'origin_seller': Seller.objects.get_or_create(name='Rifuzl')[0]
            }
        )[0]

        response = pb.TxScannedRContainer()
        response.proto.nfc_id = container.nfc_id
        response.proto.date_created = psd.to_timestamp(container.date_created)
        self.consumer.send_message(response)

    @psd.receive(auth=False)
    def scan_container(self, message: pb.RxScaleMeasurement):
        update = pb.TxScaleUpdate()
        update.proto.nfc_id = message.proto.nfc_id
        update.proto.weight_g = message.proto.weight_g
        from api.consumers import BaseConsumer
        self.consumer.broadcast(BaseConsumer.APP_GROUP, update)
