import random
import proto_socket_django as psd
from django.db.models import QuerySet

import proto.messages as pb
from containers.models import RContainer, ContainerPurchase
from sellers.models import Reward, Product


class SellersReceiver(psd.FPSReceiver):
    @psd.receive(auth=False)
    def load_rewards(self, message: pb.RxLoadRewards):
        rewards: QuerySet[Reward] = Reward.objects.filter(container__nfc_id__in=message.proto.nfc_ids)
        response = pb.TxRewards()
        response.proto.rewards = [r.to_proto() for r in rewards]
        self.consumer.send_message(response)

    @psd.receive(auth=False)
    def new_purchase(self, message: pb.RxNewPurchase):
        container: RContainer = RContainer.objects.filter(nfc_id=message.proto.nfc_id).first()
        if not container:
            return psd.FPSReceiverError('Container does not exist!')

        product: Product = Product.objects.filter(id=message.proto.product_id).first()
        if not product:
            return psd.FPSReceiverError('Product does not exist!')

        ContainerPurchase.objects.create(
            container=container,
            product=product,
            weight_g=message.proto.weight_g,
        )

        Reward.objects.create(
            container=container,
            reason=random.choice(['OLDEST CONTAINER IN THE UNIVERSE', '100 KG OF FOOD', 'LUCKY DAY REWARD']),
            reward=random.choice(['10% DISCOUNT ON BEVERAGES', '2 FOR 1 FOR MAGIC POWDER', 'FREE FORTUNE COOKIE'])
        )
