import 'package:flutter/material.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/messages.dart';
import 'package:zero_waste_frontend/proto/containers.pb.dart';

class ContainerProvider extends ChangeNotifier with SubscriptionsMixin {
  Map<String, RContainerInfo> containers = Map();

  ContainerProvider() {
    listen(socketApi.getMessageHandler(RxRContainerInfo()), _onContainerInfo);
    socketApi.fireFromCache(RxRContainerInfo());
  }

  void _onContainerInfo(RxRContainerInfo message) {
    containers[message.data.nfcId] = message.data;
    notifyListeners();
  }

  Future<void> loadContainer(String id) async {
    return socketApi.sendMessage(TxLoadRContainerInfo.create((data) {
      data.nfcId = id;
      return data;
    }));
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
