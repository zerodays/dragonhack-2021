from channels.routing import ProtocolTypeRouter, URLRouter
import api.routing

application = ProtocolTypeRouter({
    'websocket': URLRouter(
        api.routing.websocket_urlpatterns
    ),
})
