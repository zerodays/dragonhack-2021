import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/messages.dart';
import 'package:zero_waste_frontend/proto/containers.pb.dart';
import 'package:zero_waste_frontend/proto/rewards.pb.dart';

class RewardProvider extends ChangeNotifier with SubscriptionsMixin {
  Map<String, RContainerInfo> containers = Map();
  List<Reward> rewards;

  RewardProvider() {
    listen(socketApi.getMessageHandler(RxRewards()), _onRewardInfo);
    socketApi.fireFromCache(RxRewards());
  }

  void _onRewardInfo(RxRewards message) {
    rewards = message.data.rewards;
    notifyListeners();
  }

  Future<void> loadContainer(String id) async {
    return socketApi.sendMessage(TxLoadRContainerInfo.create((data) {
      data.nfcId = id;
      return data;
    }));
  }

  Future<SocketApiTxStatus> loadRewards(RxRContainers containers) {
    return socketApi.sendMessage(TxLoadRewards.create((data) {
      data.nfcIds.addAll(containers.data.containers.values.map((e) => e.nfcId));
      return data;
    }));
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
