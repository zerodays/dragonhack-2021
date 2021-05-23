import 'package:gm5_utils/extended_functionality/context.dart';
import 'package:flutter/material.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/theme.dart';
import 'package:zero_waste_frontend/web/router.dart';
import 'login/login.dart';

Future<Widget> get application async {
  return ZeroWasteWeb();
  // return MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create: (context) => HomeProvider()),
  //   ],
  //   child: ZeroWasteWeb(),
  // );
}

class ZeroWasteWeb extends StatefulWidget {
  static GlobalKey<NavigatorState> navigator = GlobalKey();

  @override
  _ZeroWasteWebState createState() => _ZeroWasteWebState();
}

class _ZeroWasteWebState extends State<ZeroWasteWeb> with SubscriptionsMixin {
  OverlayEntry _disconnectedOverlay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Zero Waste',
        navigatorKey: ZeroWasteWeb.navigator,
        theme: zeroWasteTheme.copyWith(
          textTheme: zeroWasteTheme.textTheme.copyWith(),
        ),
        onGenerateRoute: (settings) {
          if (socketApi.authenticated.val) return FluroRouter.router.generator(settings);
          return FluroRouter.router.matchRoute(context, Login.route).route;
        },
        initialRoute: socketApi.authenticated.val ? '/' : Login.route,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    FluroRouter.setupRouter();
    listen(socketApi.authenticated.changes, _authChange);
    listen(socketApi.connection.connected.changes, _connChange);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!socketApi.authenticated.val) _authChange(false);
      if (!socketApi.connection.connected.val) _connChange(false);
    });
  }

  void _authChange(bool authenticated) {
    if (authenticated) {
      FluroRouter.router.navigateTo(ZeroWasteWeb.navigator.currentContext, '/', clearStack: true);
    } else {
      FluroRouter.router.navigateTo(ZeroWasteWeb.navigator.currentContext, Login.route, clearStack: true);
    }
  }

  void _connChange(bool connected) {
    if (connected) {
      _disconnectedOverlay.remove();
    } else {
      _disconnectedOverlay = OverlayEntry(
        builder: (c) => Container(
          color: Colors.black45,
          alignment: Alignment.center,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Povezava s strežnikom ni uspela',
                      style: context.textTheme.headline3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Za delovanje aplikacije je potrebna internetna povezava.',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      ZeroWasteWeb.navigator.currentState.overlay.insert(_disconnectedOverlay);
    }
  }
}
