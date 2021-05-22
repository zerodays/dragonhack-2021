import 'package:moor/moor.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'proto/zero_waste.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';

class RxUserProfileData extends SocketRxMessage {
  static const String type = 'user-profile-data';
  final UserProfileData data = UserProfileData();
  

  RxUserProfileData([SocketRxMessageData message]) : super(type, message);

  @override
  RxUserProfileData fromMessage(SocketRxMessageData message) => RxUserProfileData(message);
}


class RxLoginMagicLinkStatus extends SocketRxMessage {
  static const String type = 'login-magic-link-status';
  final LoginMagicLinkStatus data = LoginMagicLinkStatus();
  

  RxLoginMagicLinkStatus([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginMagicLinkStatus fromMessage(SocketRxMessageData message) => RxLoginMagicLinkStatus(message);
}


class TxGetMagicLink extends SocketTxMessage {
  static const String type = 'get-magic-link';
  final GetMagicLink proto;
  
  
  const TxGetMagicLink([this.proto]) : super(type, authRequired: true);
  
  static GetMagicLink get newProto => GetMagicLink();
  
  static TxGetMagicLink create([GetMagicLink Function(GetMagicLink data) setData]) => TxGetMagicLink((setData ?? (p) => p)(TxGetMagicLink.newProto));
}


class TxLoginMagicLink extends SocketTxMessage {
  static const String type = 'login-magic-link';
  final LoginMagicLink proto;
  
  
  const TxLoginMagicLink([this.proto]) : super(type, authRequired: true);
  
  static LoginMagicLink get newProto => LoginMagicLink();
  
  static TxLoginMagicLink create([LoginMagicLink Function(LoginMagicLink data) setData]) => TxLoginMagicLink((setData ?? (p) => p)(TxLoginMagicLink.newProto));
}


List<SocketRxMessage> rxMessages = [
  RxUserProfileData(),
  RxLoginMagicLinkStatus()
];
    
List<SingleChildWidget> getMessageProviders(SocketApi api) => [
      StreamProvider<RxUserProfileData>(
        create: (c) => _getMessageHandler(api, RxUserProfileData()),
        lazy: false,
      ),
      StreamProvider<RxLoginMagicLinkStatus>(
        create: (c) => _getMessageHandler(api, RxLoginMagicLinkStatus()),
        lazy: false,
      )
];

Stream<T> _getMessageHandler<T extends SocketRxMessage>(SocketApi api, T message) {
  Stream<T> s = api.getMessageHandler(message);
  api.fireFromCache(message);
  return s;
}