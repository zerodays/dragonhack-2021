import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/messages.dart';
import 'package:zero_waste_frontend/proto/home.pb.dart';

class HomeProvider extends ChangeNotifier with SubscriptionsMixin {
  HomeInfo homeInfo;
  RxRContainers containers;

  HomeProvider() {
    listen(socketApi.getMessageHandler(RxHomeInfo()), _onHomeInfo);
    socketApi.fireFromCache(RxHomeInfo());

    loadContainers().then((_) => load());
  }

  void _onHomeInfo(RxHomeInfo message) {
    homeInfo = message.data;
    notifyListeners();
  }

  Future<SocketApiTxStatus> load() {
    return socketApi.sendMessage(
        TxGetHomeInfo.create((data) => data
          ..nfcIds.addAll(
            containers.data.containers.values.map((c) => c.nfcId).toList(),
          )),
        ack: true);
  }

  Future<void> loadContainers() async {
    containers = (await socketApi.getFromCache(RxRContainers()))?.first ??
        RxRContainers();
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
