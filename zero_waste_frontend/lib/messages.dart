import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'proto/containers.pb.dart';
import 'package:moor/moor.dart';
import 'proto/scale.pb.dart';
import 'proto/rewards.pb.dart';
import 'proto/zero_waste.pb.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'proto/home.pb.dart';
import 'proto/sellers.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';

class TxScaleMeasurement extends SocketTxMessage {
  static const String type = 'scale-measurement';
  final ScaleMeasurement proto;
  
  
  const TxScaleMeasurement([this.proto]) : super(type, authRequired: true);
  
  static ScaleMeasurement get newProto => ScaleMeasurement();
  
  static TxScaleMeasurement create([ScaleMeasurement Function(ScaleMeasurement data) setData]) => TxScaleMeasurement((setData ?? (p) => p)(TxScaleMeasurement.newProto));
}


class TxGetHomeInfo extends SocketTxMessage {
  static const String type = 'get-home-info';
  final GetHomeInfo proto;
  
  
  const TxGetHomeInfo([this.proto]) : super(type, authRequired: true);
  
  static GetHomeInfo get newProto => GetHomeInfo();
  
  static TxGetHomeInfo create([GetHomeInfo Function(GetHomeInfo data) setData]) => TxGetHomeInfo((setData ?? (p) => p)(TxGetHomeInfo.newProto));
}


class RxRContainerInfo extends SocketRxMessage {
  static const String type = 'r-container-info';
  final RContainerInfo data = RContainerInfo();
  

  RxRContainerInfo([SocketRxMessageData message]) : super(type, message);

  @override
  RxRContainerInfo fromMessage(SocketRxMessageData message) => RxRContainerInfo(message);
}


class TxScanRContainer extends SocketTxMessage {
  static const String type = 'scan-r-container';
  final ScanRContainer proto;
  
  
  const TxScanRContainer([this.proto]) : super(type, authRequired: true);
  
  static ScanRContainer get newProto => ScanRContainer();
  
  static TxScanRContainer create([ScanRContainer Function(ScanRContainer data) setData]) => TxScanRContainer((setData ?? (p) => p)(TxScanRContainer.newProto));
}


class TxNewPurchase extends SocketTxMessage {
  static const String type = 'new-purchase';
  final NewPurchase proto;
  
  
  const TxNewPurchase([this.proto]) : super(type, authRequired: true);
  
  static NewPurchase get newProto => NewPurchase();
  
  static TxNewPurchase create([NewPurchase Function(NewPurchase data) setData]) => TxNewPurchase((setData ?? (p) => p)(TxNewPurchase.newProto));
}


class TxGetMagicLink extends SocketTxMessage {
  static const String type = 'get-magic-link';
  final GetMagicLink proto;
  
  
  const TxGetMagicLink([this.proto]) : super(type, authRequired: true);
  
  static GetMagicLink get newProto => GetMagicLink();
  
  static TxGetMagicLink create([GetMagicLink Function(GetMagicLink data) setData]) => TxGetMagicLink((setData ?? (p) => p)(TxGetMagicLink.newProto));
}


class TxLoadRContainerInfo extends SocketTxMessage {
  static const String type = 'load-r-container-info';
  final LoadRContainerInfo proto;
  
  
  const TxLoadRContainerInfo([this.proto]) : super(type, authRequired: true);
  
  static LoadRContainerInfo get newProto => LoadRContainerInfo();
  
  static TxLoadRContainerInfo create([LoadRContainerInfo Function(LoadRContainerInfo data) setData]) => TxLoadRContainerInfo((setData ?? (p) => p)(TxLoadRContainerInfo.newProto));
}


class RxRContainers extends SocketRxMessage {
  static const String type = 'r-containers';
  final RContainers data = RContainers();
  

  RxRContainers([SocketRxMessageData message]) : super(type, message);

  @override
  RxRContainers fromMessage(SocketRxMessageData message) => RxRContainers(message);
}


class RxHomeInfo extends SocketRxMessage {
  static const String type = 'home-info';
  final HomeInfo data = HomeInfo();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxHomeInfo([SocketRxMessageData message]) : super(type, message);

  @override
  RxHomeInfo fromMessage(SocketRxMessageData message) => RxHomeInfo(message);
}


class TxLoadRewards extends SocketTxMessage {
  static const String type = 'load-rewards';
  final LoadRewards proto;
  
  
  const TxLoadRewards([this.proto]) : super(type, authRequired: true);
  
  static LoadRewards get newProto => LoadRewards();
  
  static TxLoadRewards create([LoadRewards Function(LoadRewards data) setData]) => TxLoadRewards((setData ?? (p) => p)(TxLoadRewards.newProto));
}


class RxScaleUpdate extends SocketRxMessage {
  static const String type = 'scale-update';
  final ScaleUpdate data = ScaleUpdate();
  

  RxScaleUpdate([SocketRxMessageData message]) : super(type, message);

  @override
  RxScaleUpdate fromMessage(SocketRxMessageData message) => RxScaleUpdate(message);
}


class TxLoginMagicLink extends SocketTxMessage {
  static const String type = 'login-magic-link';
  final LoginMagicLink proto;
  
  
  const TxLoginMagicLink([this.proto]) : super(type, authRequired: true);
  
  static LoginMagicLink get newProto => LoginMagicLink();
  
  static TxLoginMagicLink create([LoginMagicLink Function(LoginMagicLink data) setData]) => TxLoginMagicLink((setData ?? (p) => p)(TxLoginMagicLink.newProto));
}


class RxScannedRContainer extends SocketRxMessage {
  static const String type = 'scanned-r-container';
  final ScannedRContainer data = ScannedRContainer();
  

  RxScannedRContainer([SocketRxMessageData message]) : super(type, message);

  @override
  RxScannedRContainer fromMessage(SocketRxMessageData message) => RxScannedRContainer(message);
}


class RxLoginMagicLinkStatus extends SocketRxMessage {
  static const String type = 'login-magic-link-status';
  final LoginMagicLinkStatus data = LoginMagicLinkStatus();
  

  RxLoginMagicLinkStatus([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginMagicLinkStatus fromMessage(SocketRxMessageData message) => RxLoginMagicLinkStatus(message);
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


List<SocketRxMessage> rxMessages = [
  RxRContainerInfo(),
  RxRContainers(),
  RxHomeInfo(),
  RxScaleUpdate(),
  RxScannedRContainer(),
  RxLoginMagicLinkStatus(),
  RxUserProfileData(),
  RxRewards()
];
    
List<SingleChildWidget> getMessageProviders(SocketApi api) => [
      StreamProvider<RxRContainerInfo>(
        create: (c) => _getMessageHandler(api, RxRContainerInfo()),
        lazy: false,
      ),
      StreamProvider<RxRContainers>(
        create: (c) => _getMessageHandler(api, RxRContainers()),
        lazy: false,
      ),
      StreamProvider<RxHomeInfo>(
        create: (c) => _getMessageHandler(api, RxHomeInfo()),
        lazy: false,
      ),
      StreamProvider<RxScaleUpdate>(
        create: (c) => _getMessageHandler(api, RxScaleUpdate()),
        lazy: false,
      ),
      StreamProvider<RxScannedRContainer>(
        create: (c) => _getMessageHandler(api, RxScannedRContainer()),
        lazy: false,
      ),
      StreamProvider<RxLoginMagicLinkStatus>(
        create: (c) => _getMessageHandler(api, RxLoginMagicLinkStatus()),
        lazy: false,
      ),
      StreamProvider<RxUserProfileData>(
        create: (c) => _getMessageHandler(api, RxUserProfileData()),
        lazy: false,
      ),
      StreamProvider<RxRewards>(
        create: (c) => _getMessageHandler(api, RxRewards()),
        lazy: false,
      )
];

Stream<T> _getMessageHandler<T extends SocketRxMessage>(SocketApi api, T message) {
  Stream<T> s = api.getMessageHandler(message);
  api.fireFromCache(message);
  return s;
}