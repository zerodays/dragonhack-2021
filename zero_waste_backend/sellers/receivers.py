from typing import List

import proto_socket_django as psd
from django.db.models import QuerySet

import proto.messages as pb
from containers.models import RContainer
from containers.savings_calculator import SavingsCalculator
from sellers.models import Reward


class SellersReceiver(psd.FPSReceiver):
    @psd.receive(auth=False)
    def load_rewards(self, message: pb.RxLoadRewards):
        rewards: QuerySet[Reward] = Reward.objects.filter(container__nfc_id__in=message.proto.nfc_ids)
        response = pb.TxRewards()
        response.proto.rewards = [r.to_proto() for r in rewards]
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
