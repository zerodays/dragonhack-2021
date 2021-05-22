from proto_socket_django import ApiWebsocketConsumer
from authentication.receiver import AuthenticationReceiver
from containers.receivers import ContainersReceiver


class BaseConsumer(ApiWebsocketConsumer):
    receivers = [AuthenticationReceiver, ContainersReceiver]
    APP_GROUP = 'base_consumer_group'
    groups = [APP_GROUP]
