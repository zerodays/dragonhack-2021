import proto_socket_django as psd
from django.contrib.auth import authenticate

import proto.messages as pb
from authentication.models import Token


class AuthenticationReceiver(psd.FPSReceiver):
    @psd.receive(auth=False)
    def login(self, message: pb.RxLogin):
        user = authenticate(username=message.proto.username, password=message.proto.password)
        if user is None:
            message = pb.TxLoginError(
                pb.TxLoginError.proto(error_text='Napačni prijavni podatki', error_code='login-error'))
        else:
            message = pb.TxLoginToken(pb.TxLoginToken.proto(token=Token.create(user)))
        self.consumer.send_message(message)