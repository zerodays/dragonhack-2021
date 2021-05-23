import 'package:flutter/material.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/messages.dart';

class ScaleProvider extends ChangeNotifier with SubscriptionsMixin {
  double weightG;
  String nfcId;

  ScaleProvider() {
    listen(socketApi.getMessageHandler(RxScaleUpdate()), _onScaleUpdate);
  }

  void _onScaleUpdate(RxScaleUpdate message) {
    nfcId = message.data.nfcId;
    weightG = message.data.weightG;
    print(weightG);
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
