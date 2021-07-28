# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: sellers.proto
# plugin: python-betterproto
from dataclasses import dataclass
from typing import List

import betterproto


@dataclass
class NewPurchase(betterproto.Message):
    """type = 'new-purchase'origin = client"""

    nfc_id: str = betterproto.string_field(1)
    product_id: str = betterproto.string_field(2)
    weight_g: int = betterproto.int32_field(3)


@dataclass
class LoadProductList(betterproto.Message):
    """type = 'load-product-list'origin = client"""

    pass


@dataclass
class ProductList(betterproto.Message):
    """type = 'product-list'origin = server"""

    products: List["Product"] = betterproto.message_field(1)


@dataclass
class Product(betterproto.Message):
    id: str = betterproto.string_field(1)
    name: str = betterproto.string_field(2)
    price_per_g: float = betterproto.float_field(3)
