from proto_socket_django import ApiWebsocketConsumer
from authentication.models import UserGroups
from authentication.receiver import AuthenticationReceiver
from containers.receivers import ContainersReceiver
from sellers.receivers import SellersReceiver


class BaseConsumer(ApiWebsocketConsumer):
    receivers = [AuthenticationReceiver, ContainersReceiver, SellersReceiver]
    APP_GROUP = 'base_consumer_group'
    groups = [APP_GROUP]

    def on_authenticated(self):
        self.add_group(UserGroups.authenticated)
