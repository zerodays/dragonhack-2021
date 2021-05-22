from django.db import models
from proto_socket_django import api_models
import proto.messages as pb


class RContainer(api_models.ApiModel):
    nfc_id = models.CharField(max_length=255, unique=True)
    origin_seller = models.ForeignKey('sellers.Seller', on_delete=models.CASCADE)

class