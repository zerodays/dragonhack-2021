import 'package:fluro/fluro.dart';
import 'home/home.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _home = Handler(handlerFunc: (context, params) => Home());

  static void setupRouter() {
    router = Router();
    router.define(
      Home.route,
      handler: _home,
      transitionType: TransitionType.none,
    );
  }
}
