from django.db import models
from proto_socket_django import api_models
import proto.messages as pb
from containers.savings_calculator import SavingsCalculator
import proto_socket_django as psd


class RContainer(api_models.ApiModel):
    nfc_id = models.CharField(max_length=255, unique=True)
    origin_seller = models.ForeignKey('sellers.Seller', on_delete=models.CASCADE)
    weight_sum_g = models.IntegerField(default=0)

    def get_info(self) -> pb.RContainerInfo:
        proto = pb.RContainerInfo()
        proto.nfc_id = self.nfc_id
        proto.waste_saved_g = self.weight_sum_g
        proto.co2_saved_g = SavingsCalculator.g_co2(self.weight_sum_g)
        proto.waste_saved_g = SavingsCalculator.g_waste(self.weight_sum_g)
        proto.origin_seller = self.origin_seller.name
        proto.origin_location = self.origin_seller.location

        mass_sum = 0
        for purchase in self.containerpurchase_set.all():
            mass_sum += purchase.weight_g
            proto.mass.append(pb.TimePoint(
                time=psd.to_timestamp(purchase.date_created),
                value=mass_sum
            ))
            proto.co2.append(pb.TimePoint(
                time=psd.to_timestamp(purchase.date_created),
                value=SavingsCalculator.g_co2(mass_sum)
            ))
            proto.mass.append(pb.TimePoint(
                time=psd.to_timestamp(purchase.date_created),
                value=SavingsCalculator.g_waste(mass_sum)
            ))
            proto.purchases.append(purchase.to_proto())

        return proto

    def __str__(self):
        return f'{self.origin_seller.name} ({self.nfc_id})'

    class Meta:
        ordering = ['date_created']


class ContainerPurchase(api_models.ApiModel):
    container = models.ForeignKey(RContainer, on_delete=models.CASCADE)
    product = models.ForeignKey('sellers.Product', on_delete=models.CASCADE)
    weight_g = models.IntegerField()

    def to_proto(self) -> pb.Purchase:
        return pb.Purchase(
            date=psd.to_timestamp(self.date_created),
            item=self.product.name,
            weight_g=self.weight_g
        )

    def __str__(self):
        return f'{self.container.nfc_id} - {self.product.name} ({self.weight_g}g)'

    class Meta:
        ordering = ['date_created']
