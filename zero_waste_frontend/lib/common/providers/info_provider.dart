import 'package:flutter/material.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/messages.dart';
import 'package:zero_waste_frontend/proto/containers.pb.dart';
import 'package:zero_waste_frontend/proto/rewards.pb.dart';

class InfoProvider extends ChangeNotifier with SubscriptionsMixin {
  RContainerInfo container;
  List<Reward> rewards = [];

  InfoProvider() {
    listen(socketApi.getMessageHandler(RxRContainerInfo()), _onContainerInfo);
    listen(socketApi.getMessageHandler(RxRewards()), _onRewardInfo);
    socketApi.fireFromCache(RxRContainerInfo());
  }

  void _onContainerInfo(RxRContainerInfo message) {
    container = message.data;
    notifyListeners();
  }

  void _onRewardInfo(RxRewards message) {
    rewards = message.data.rewards;
    notifyListeners();
  }

  Future<void> loadInfo(String id) async {
    socketApi.sendMessage(TxLoadRContainerInfo.create((data) {
      data.nfcId = id;
      return data;
    }));
    return socketApi.sendMessage(TxLoadRewards.create((data) {
      data.nfcIds.addAll([id]);
      return data;
    }));
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
