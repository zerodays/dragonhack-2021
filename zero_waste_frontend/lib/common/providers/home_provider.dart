import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/messages.dart';
import 'package:zero_waste_frontend/proto/containers.pb.dart';
import 'package:zero_waste_frontend/proto/home.pb.dart';
import 'package:zero_waste_frontend/proto/rewards.pb.dart';

class HomeProvider extends ChangeNotifier with SubscriptionsMixin {
  HomeInfo homeInfo;
  RxRContainers containers;

  List<String> get nfcIds =>
      containers.data.containers.values.map((e) => e.nfcId).toList();

  HomeProvider() {
    listen(socketApi.getMessageHandler(RxHomeInfo()), _onHomeInfo);
    listen(socketApi.getMessageHandler(RxScannedRContainer()), _onScannedInfo);

    socketApi.fireFromCache(RxHomeInfo());

    loadContainers().then((_) => load());
  }

  void _onHomeInfo(RxHomeInfo message) {
    homeInfo = message.data;
    notifyListeners();
  }

  void _onScannedInfo(RxScannedRContainer message) {
    final id = message.data.nfcId;
    containers.data.containers[id] = RContainer(
        nfcId: id,
        dateCreated: message.data.dateCreated,
        name: 'Container ${id.hashCode.toString().substring(0, 2)}');

    containers.save();
    notifyListeners();
  }

  Future<SocketApiTxStatus> load() {
    return socketApi.sendMessage(
        TxGetHomeInfo.create((data) => data
          ..nfcIds.addAll(
            nfcIds,
          )),
        ack: true);
  }

  Future<void> loadContainers() async {
    containers = (await socketApi.getFromCache(RxRContainers()))?.first ??
        RxRContainers();
  }

  Future<void> scanContainer(String id) async {
    return socketApi.sendMessage(TxScanRContainer.create((data) {
      data..nfcId = id;
      return data;
    }));
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
