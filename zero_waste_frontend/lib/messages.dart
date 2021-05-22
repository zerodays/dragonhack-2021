import 'package:moor/moor.dart';
import 'package:provider/single_child_widget.dart';
import 'proto/home.pb.dart';
import 'proto/zero_waste.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'proto/containers.pb.dart';
import 'package:provider/provider.dart';
import 'proto/rewards.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';

class RxHomeInfo extends SocketRxMessage {
  static const String type = 'home-info';
  final HomeInfo data = HomeInfo();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxHomeInfo([SocketRxMessageData message]) : super(type, message);

  @override
  RxHomeInfo fromMessage(SocketRxMessageData message) => RxHomeInfo(message);
}


class TxScanWasteContainer extends SocketTxMessage {
  static const String type = 'scan-container';
  final ScanWasteContainer proto;
  
  
  const TxScanWasteContainer([this.proto]) : super(type, authRequired: true);
  
  static ScanWasteContainer get newProto => ScanWasteContainer();
  
  static TxScanWasteContainer create([ScanWasteContainer Function(ScanWasteContainer data) setData]) => TxScanWasteContainer((setData ?? (p) => p)(TxScanWasteContainer.newProto));
}


class TxGetMagicLink extends SocketTxMessage {
  static const String type = 'get-magic-link';
  final GetMagicLink proto;
  
  
  const TxGetMagicLink([this.proto]) : super(type, authRequired: true);
  
  static GetMagicLink get newProto => GetMagicLink();
  
  static TxGetMagicLink create([GetMagicLink Function(GetMagicLink data) setData]) => TxGetMagicLink((setData ?? (p) => p)(TxGetMagicLink.newProto));
}


class RxContainerPurchases extends SocketRxMessage {
  static const String type = 'container-purchases';
  final ContainerPurchases data = ContainerPurchases();
  

  RxContainerPurchases([SocketRxMessageData message]) : super(type, message);

  @override
  RxContainerPurchases fromMessage(SocketRxMessageData message) => RxContainerPurchases(message);
}


class RxUserProfileData extends SocketRxMessage {
  static const String type = 'user-profile-data';
  final UserProfileData data = UserProfileData();
  

  RxUserProfileData([SocketRxMessageData message]) : super(type, message);

  @override
  RxUserProfileData fromMessage(SocketRxMessageData message) => RxUserProfileData(message);
}


class RxRewards extends SocketRxMessage {
  static const String type = 'rewards';
  final Rewards data = Rewards();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxRewards([SocketRxMessageData message]) : super(type, message);

  @override
  RxRewards fromMessage(SocketRxMessageData message) => RxRewards(message);
}


class RxContainerInfo extends SocketRxMessage {
  static const String type = 'container-info';
  final ContainerInfo data = ContainerInfo();
  

  RxContainerInfo([SocketRxMessageData message]) : super(type, message);

  @override
  RxContainerInfo fromMessage(SocketRxMessageData message) => RxContainerInfo(message);
}


class TxLoadContainerInfo extends SocketTxMessage {
  static const String type = 'load-container-info';
  final LoadContainerInfo proto;
  
  
  const TxLoadContainerInfo([this.proto]) : super(type, authRequired: true);
  
  static LoadContainerInfo get newProto => LoadContainerInfo();
  
  static TxLoadContainerInfo create([LoadContainerInfo Function(LoadContainerInfo data) setData]) => TxLoadContainerInfo((setData ?? (p) => p)(TxLoadContainerInfo.newProto));
}


class TxLoadRewards extends SocketTxMessage {
  static const String type = 'load-rewards';
  final LoadRewards proto;
  
  
  const TxLoadRewards([this.proto]) : super(type, authRequired: true);
  
  static LoadRewards get newProto => LoadRewards();
  
  static TxLoadRewards create([LoadRewards Function(LoadRewards data) setData]) => TxLoadRewards((setData ?? (p) => p)(TxLoadRewards.newProto));
}


class RxContainerImpact extends SocketRxMessage {
  static const String type = 'container-impact';
  final ContainerImpact data = ContainerImpact();
  

  RxContainerImpact([SocketRxMessageData message]) : super(type, message);

  @override
  RxContainerImpact fromMessage(SocketRxMessageData message) => RxContainerImpact(message);
}


class TxGetHomeInfo extends SocketTxMessage {
  static const String type = 'get-home-info';
  final GetHomeInfo proto;
  
  
  const TxGetHomeInfo([this.proto]) : super(type, authRequired: true);
  
  static GetHomeInfo get newProto => GetHomeInfo();
  
  static TxGetHomeInfo create([GetHomeInfo Function(GetHomeInfo data) setData]) => TxGetHomeInfo((setData ?? (p) => p)(TxGetHomeInfo.newProto));
}


class RxLoginMagicLinkStatus extends SocketRxMessage {
  static const String type = 'login-magic-link-status';
  final LoginMagicLinkStatus data = LoginMagicLinkStatus();
  

  RxLoginMagicLinkStatus([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginMagicLinkStatus fromMessage(SocketRxMessageData message) => RxLoginMagicLinkStatus(message);
}


class RxContainerMass extends SocketRxMessage {
  static const String type = 'container-mass';
  final ContainerMass data = ContainerMass();
  

  RxContainerMass([SocketRxMessageData message]) : super(type, message);

  @override
  RxContainerMass fromMessage(SocketRxMessageData message) => RxContainerMass(message);
}


class TxLoadContainerMass extends SocketTxMessage {
  static const String type = 'load-container-mass';
  final LoadContainerMass proto;
  
  
  const TxLoadContainerMass([this.proto]) : super(type, authRequired: true);
  
  static LoadContainerMass get newProto => LoadContainerMass();
  
  static TxLoadContainerMass create([LoadContainerMass Function(LoadContainerMass data) setData]) => TxLoadContainerMass((setData ?? (p) => p)(TxLoadContainerMass.newProto));
}


class RxScannedWasteContainer extends SocketRxMessage {
  static const String type = 'scanned-container';
  final ScannedWasteContainer data = ScannedWasteContainer();
  

  RxScannedWasteContainer([SocketRxMessageData message]) : super(type, message);

  @override
  RxScannedWasteContainer fromMessage(SocketRxMessageData message) => RxScannedWasteContainer(message);
}


class TxLoadContainerImpact extends SocketTxMessage {
  static const String type = 'load-container-impact';
  final LoadContainerImpact proto;
  
  
  const TxLoadContainerImpact([this.proto]) : super(type, authRequired: true);
  
  static LoadContainerImpact get newProto => LoadContainerImpact();
  
  static TxLoadContainerImpact create([LoadContainerImpact Function(LoadContainerImpact data) setData]) => TxLoadContainerImpact((setData ?? (p) => p)(TxLoadContainerImpact.newProto));
}


class TxLoadContainerPurchases extends SocketTxMessage {
  static const String type = 'load-container-purchases';
  final LoadContainerPurchases proto;
  
  
  const TxLoadContainerPurchases([this.proto]) : super(type, authRequired: true);
  
  static LoadContainerPurchases get newProto => LoadContainerPurchases();
  
  static TxLoadContainerPurchases create([LoadContainerPurchases Function(LoadContainerPurchases data) setData]) => TxLoadContainerPurchases((setData ?? (p) => p)(TxLoadContainerPurchases.newProto));
}


class RxWasteContainers extends SocketRxMessage {
  static const String type = 'waste-containers';
  final WasteContainers data = WasteContainers();
  

  RxWasteContainers([SocketRxMessageData message]) : super(type, message);

  @override
  RxWasteContainers fromMessage(SocketRxMessageData message) => RxWasteContainers(message);
}


class TxLoginMagicLink extends SocketTxMessage {
  static const String type = 'login-magic-link';
  final LoginMagicLink proto;
  
  
  const TxLoginMagicLink([this.proto]) : super(type, authRequired: true);
  
  static LoginMagicLink get newProto => LoginMagicLink();
  
  static TxLoginMagicLink create([LoginMagicLink Function(LoginMagicLink data) setData]) => TxLoginMagicLink((setData ?? (p) => p)(TxLoginMagicLink.newProto));
}


List<SocketRxMessage> rxMessages = [
  RxHomeInfo(),
  RxContainerPurchases(),
  RxUserProfileData(),
  RxRewards(),
  RxContainerInfo(),
  RxContainerImpact(),
  RxLoginMagicLinkStatus(),
  RxContainerMass(),
  RxScannedWasteContainer(),
  RxWasteContainers()
];
    
List<SingleChildWidget> getMessageProviders(SocketApi api) => [
      StreamProvider<RxHomeInfo>(
        create: (c) => _getMessageHandler(api, RxHomeInfo()),
        lazy: false,
      ),
      StreamProvider<RxContainerPurchases>(
        create: (c) => _getMessageHandler(api, RxContainerPurchases()),
        lazy: false,
      ),
      StreamProvider<RxUserProfileData>(
        create: (c) => _getMessageHandler(api, RxUserProfileData()),
        lazy: false,
      ),
      StreamProvider<RxRewards>(
        create: (c) => _getMessageHandler(api, RxRewards()),
        lazy: false,
      ),
      StreamProvider<RxContainerInfo>(
        create: (c) => _getMessageHandler(api, RxContainerInfo()),
        lazy: false,
      ),
      StreamProvider<RxContainerImpact>(
        create: (c) => _getMessageHandler(api, RxContainerImpact()),
        lazy: false,
      ),
      StreamProvider<RxLoginMagicLinkStatus>(
        create: (c) => _getMessageHandler(api, RxLoginMagicLinkStatus()),
        lazy: false,
      ),
      StreamProvider<RxContainerMass>(
        create: (c) => _getMessageHandler(api, RxContainerMass()),
        lazy: false,
      ),
      StreamProvider<RxScannedWasteContainer>(
        create: (c) => _getMessageHandler(api, RxScannedWasteContainer()),
        lazy: false,
      ),
      StreamProvider<RxWasteContainers>(
        create: (c) => _getMessageHandler(api, RxWasteContainers()),
        lazy: false,
      )
];

Stream<T> _getMessageHandler<T extends SocketRxMessage>(SocketApi api, T message) {
  Stream<T> s = api.getMessageHandler(message);
  api.fireFromCache(message);
  return s;
}