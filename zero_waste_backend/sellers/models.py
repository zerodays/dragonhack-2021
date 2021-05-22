from django.db import models

# Create your models here.
from proto_socket_django import api_models


class Seller(api_models.ApiModel):
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=255)


class Product(api_models.ApiModel):
    seller = models.ForeignKey(Seller, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField(default='', blank=True)
    price_per_g = models.FloatField()
