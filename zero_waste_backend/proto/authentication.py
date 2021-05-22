# Generated by the protocol buffer compiler.  DO NOT EDIT!
# sources: authentication.proto
# plugin: python-betterproto
from dataclasses import dataclass

import betterproto


@dataclass
class LoginToken(betterproto.Message):
    """type = 'login-token'origin = serverclient cache = years(1)"""

    token: str = betterproto.string_field(1)


@dataclass
class LoginError(betterproto.Message):
    """type = 'login-error'origin = server"""

    error_text: str = betterproto.string_field(1)
    error_code: str = betterproto.string_field(2)


@dataclass
class Login(betterproto.Message):
    """type = 'login'origin = clientauth = false"""

    username: str = betterproto.string_field(1)
    password: str = betterproto.string_field(2)


@dataclass
class AppleLogin(betterproto.Message):
    """type = 'apple-login'origin = clientauth = false"""

    code: str = betterproto.string_field(1)
    first_name: str = betterproto.string_field(2)
    last_name: str = betterproto.string_field(3)
    use_bundle_id: bool = betterproto.bool_field(4)
    state: str = betterproto.string_field(5)


@dataclass
class VerifyToken(betterproto.Message):
    """type = 'verify-token'origin = client"""

    pass


@dataclass
class TokenInvalid(betterproto.Message):
    """type = 'token-invalid'origin = server"""

    pass
