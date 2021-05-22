import hashlib
import hmac
import os
from typing import Tuple


class AuthenticationUtils:
    @staticmethod
    def hash(content: str) -> Tuple[bytes, bytes]:
        """
        Hash the provided password with a randomly-generated salt and return the
        salt and hash to store in the database.
        """
        salt = os.urandom(16)
        content_hash = hashlib.pbkdf2_hmac('sha256', content.encode(), salt, 100000)
        return salt, content_hash

    @staticmethod
    def verify(salt: bytes, content_hash: bytes, content: str) -> bool:
        """
        Given a previously-stored salt and hash, and a password provided by a user
        trying to log in, check whether the password is correct.
        """
        return hmac.compare_digest(
            content_hash,
            hashlib.pbkdf2_hmac('sha256', content.encode(), salt, 100000)
        )
