# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: socket_api.proto
# plugin: python-betterproto
from dataclasses import dataclass

import betterproto


@dataclass
class Ack(betterproto.Message):
    """type = 'ack'origin = server"""

    uuid: str = betterproto.string_field(1)
    error_message: str = betterproto.string_field(2)


@dataclass
class UpgradeApiVersion(betterproto.Message):
    """type = 'upgrade-api-version'origin = server"""

    latest: int = betterproto.int32_field(1)
