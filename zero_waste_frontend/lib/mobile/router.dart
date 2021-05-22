import 'package:fluro/fluro.dart';
import 'home/home.dart';
import 'login/login.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _login = Handler(handlerFunc: (context, params) => Login());
  static Handler _home = Handler(handlerFunc: (context, params) => Home());

  static void setupRouter() {
    router = Router();
    router.define(
      Home.route,
      handler: _home,
      transitionType: TransitionType.none,
    );
    router.define(
      Login.route,
      handler: _login,
      transitionType: TransitionType.none,
    );
  }
}
