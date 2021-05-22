import 'package:flutter_persistent_socket/components/authentication/authentication_controller.dart';
import '../globals.dart';

class ZeroWasteAuthController extends AuthenticationController {
  ZeroWasteAuthController() : super(socketApi) {
    listen(socketApi.connection.connected.changes, _connectionChanges);
    listen(socketApi.authenticated.changes, _authChanges);
  }

  void _connectionChanges(bool connected) {
    if (connected) authenticationController.verifyToken();
  }

  void _authChanges(bool authenticated) {
    if (authenticated) authenticationController.verifyToken();
  }
}

ZeroWasteAuthController authenticationController;
