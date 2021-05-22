import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

class HomeProvider extends ChangeNotifier with SubscriptionsMixin {
  bool get loading => true;

  HomeProvider() {}

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }
}
