import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart' hide Column;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/providers/container_provider.dart';
import 'package:zero_waste_frontend/common/providers/home_provider.dart';
import 'package:zero_waste_frontend/common/providers/reward_provider.dart';
import 'package:zero_waste_frontend/common/theme.dart';
import 'package:zero_waste_frontend/mobile/router.dart';

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

class _ZeroWasteMobileState extends State<ZeroWasteMobile>
    with SubscriptionsMixin, WidgetsBindingObserver {
  static GlobalKey<NavigatorState> navigator = GlobalKey();

  Uri initialLink;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => ContainerProvider()),
        ChangeNotifierProvider(create: (context) => RewardProvider())
      ],
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          navigatorKey: navigator,
          title: 'Zero Waste',
          theme: zeroWasteTheme.copyWith(
            textTheme: zeroWasteTheme.textTheme.copyWith(),
            brightness: Brightness.dark,
          ),
          onGenerateRoute: FluroRouter.router.generator,
          initialRoute: '/',
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    FluroRouter.setupRouter();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {}
  }
}
