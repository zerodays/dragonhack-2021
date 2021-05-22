from proto_socket_django import ApiWebsocketConsumer
from authentication.receiver import AuthenticationReceiver


class BaseConsumer(ApiWebsocketConsumer):
    receivers = [AuthenticationReceiver]
    APP_GROUP = 'base_consumer_group'
    groups = [APP_GROUP]
