# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: zero_waste.proto
# plugin: python-betterproto
from dataclasses import dataclass

import betterproto


@dataclass
class GetMagicLink(betterproto.Message):
    """type = 'get-magic-link'origin = client"""

    mail: str = betterproto.string_field(1)


@dataclass
class LoginMagicLink(betterproto.Message):
    """type = 'login-magic-link'origin = client"""

    token: str = betterproto.string_field(1)


@dataclass
class LoginMagicLinkStatus(betterproto.Message):
    """type = 'login-magic-link-status'origin = server"""

    status: str = betterproto.string_field(1)
    error: bool = betterproto.bool_field(2)


@dataclass
class UserProfileData(betterproto.Message):
    """type = 'user-profile-data'origin = server"""

    name: str = betterproto.string_field(1)
