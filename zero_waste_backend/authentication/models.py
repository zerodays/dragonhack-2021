import os
import uuid
from typing import Optional
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils import timezone
from authentication.utils import AuthenticationUtils


class UserGroups:
    pass

class User(AbstractUser):
    def has_group(self, name: str) -> bool:
        return self.groups.filter(name=name).exists()


class Token(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    uuid = models.CharField(max_length=36, db_index=True)
    hash = models.BinaryField(max_length=32)
    salt = models.BinaryField(max_length=16)
    created = models.DateTimeField(auto_now_add=True)
    expires = models.DateTimeField(null=True, blank=True)

    @staticmethod
    def authenticate(token: str) -> Optional[User]:
        try:
            uuid, token = token.split('&')
            token_obj = Token.objects.get(uuid=uuid)
            if token_obj.expires is not None and timezone.now() > token_obj.expires:
                return None
        except:
            return None
        if AuthenticationUtils.verify(token_obj.salt, token_obj.hash, token):
            return token_obj.user

    @staticmethod
    def create(user: User, expires: timezone.timedelta = None):
        token = Token()
        token.user = user
        token_str = os.urandom(32).hex()
        token.salt, token.hash = AuthenticationUtils.hash(token_str)
        token.uuid = str(uuid.uuid4())
        if expires:
            token.expires = timezone.now() + expires
        token.save()
        return token.uuid + '&' + token_str
