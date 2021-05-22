import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/messages.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:zero_waste_frontend/proto/zero_waste.pb.dart';
import '../../messages.dart';
import '../globals.dart';

class AuthenticationProvider extends ChangeNotifier with SubscriptionsMixin {
  String errors;
  bool magicLinkSent = false;
  UserProfile profile;

  AuthenticationProvider() {
    listen(socketApi.getMessageHandler(RxLoginError()), _loginError);
    listen(socketApi.getMessageHandler(RxUserProfileData()), _onUserProfile);
  }

  void login(String username, String password) {
    socketApi.sendMessage(TxLogin.create(
      (data) => data
        ..username = username
        ..password = password,
    ));
  }

  void _loginError(RxLoginError message) {
    errors = message.data.errorText;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }

  static Future<bool> loginMagicLink(String token) async {
    final status = await socketApi.sendMessage(TxLoginMagicLink.create((data) => data..token = token), ack: true);
    return status.status == SocketApiAckStatus.success;
  }

  void _onUserProfile(RxUserProfileData message) {
    profile = UserProfile.fromProto(message.data);
    notifyListeners();
  }
}

class UserProfile {
  String name;

  UserProfile.fromProto(UserProfileData profileData) {
    name = profileData.name;
  }
}
