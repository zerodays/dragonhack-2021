import 'package:fluro/fluro.dart';
import 'package:zero_waste_frontend/web/home/home.dart';
import 'login/login.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _login = Handler(handlerFunc: (context, params) => Login());
  static Handler _home = Handler(handlerFunc: (context, params) => Home());

  // static Handler _inspection = Handler(
  //   handlerFunc: (context, params) => ChangeNotifierProvider(
  //     create: (context) => InspectionProvider(params['id'][0]),
  //     child: InspectionScreen(),
  //   ),
  // );

  static void setupRouter() {
    router = Router();
    router.define(
      '/',
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
