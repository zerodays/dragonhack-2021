from django.db import models
import proto.messages as pb
from proto_socket_django import api_models


class Seller(api_models.ApiModel):
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Product(api_models.ApiModel):
    seller = models.ForeignKey(Seller, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField(default='', blank=True)
    price_per_g = models.FloatField()

    def to_proto(self) -> pb.Product:
        return pb.Product(
            id=self.id,
            name=self.name,
            price_per_g=self.price_per_g
        )

    def __str__(self):
        return f'{self.seller.name} - {self.name}'


class Reward(api_models.ApiModel):
    container = models.ForeignKey('containers.RContainer', on_delete=models.CASCADE)
    reason = models.CharField(max_length=255)
    reward = models.CharField(max_length=255)

    def to_proto(self) -> pb.Reward:
        return pb.Reward(
            reason=self.reason,
            reward=self.reward
        )

    def __str__(self):
        return f'{self.container.nfc_id} - {self.reward} ({self.reason})'
