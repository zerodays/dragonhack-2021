import 'dart:io';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:moor/moor.dart' hide Column;
import 'package:moor/ffi.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zero_waste_frontend/common/api/authentication.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/theme.dart';
import 'package:zero_waste_frontend/mobile/router.dart';

import 'login/login.dart';

QueryExecutor openDatabaseConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'db_v1.sqlite'));
    return VmDatabase(file);
  });
}

Future<Widget> get application async {
  WidgetsFlutterBinding.ensureInitialized();
  return ZeroWasteMobile();
}

class ZeroWasteMobile extends StatefulWidget {
  static const double ff = 1.2;

  @override
  State createState() {
    return _ZeroWasteMobileState();
  }
}

class _ZeroWasteMobileState extends State<ZeroWasteMobile> with SubscriptionsMixin, WidgetsBindingObserver {
  static GlobalKey<NavigatorState> navigator = GlobalKey();

  Uri initialLink;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        navigatorKey: navigator,
        title: 'Bolder Scena',
        theme: zeroWasteTheme.copyWith(
          textTheme: zeroWasteTheme.textTheme.copyWith(),
          brightness: Brightness.dark,
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
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!socketApi.authenticated.val) _authChange(false);
    });
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      authenticationController.init();
    }
  }

  void _authChange(bool authenticated) {
    if (authenticated) {
      FluroRouter.router.navigateTo(navigator.currentContext, '/', clearStack: true, transition: TransitionType.none);
    } else {
      FluroRouter.router
          .navigateTo(navigator.currentContext, Login.route, clearStack: true, transition: TransitionType.none);
    }
  }
}
