import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:gm5_utils/components/loading_overlay.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

import 'common/api/authentication.dart';
import 'common/globals.dart';
import 'common/providers/authentication_provider.dart';
import 'ui_stub.dart'
    if (dart.library.io) 'mobile/ui_mobile.dart'
    if (dart.library.html) 'web/ui_web.dart';

void main() async {
  // ignore: close_sinks
  StreamController<ScrollMetrics> _scrollUpdates = StreamController.broadcast();
  scrollUpdates = _scrollUpdates.stream;
  initializeDateFormatting('sl_SI');
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnv.load(fileName: '.env');
  DelayedBuilder.defaultDelay = Duration.zero;
  DelayedBuilder.defaultDuration = Duration(milliseconds: 100);
  DelayedBuilder.defaultPlaceholder = Center(
    child: Container(
      padding: const EdgeInsets.all(8),
      constraints: BoxConstraints(maxHeight: 60),
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 1,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Pallette.primary),
        ),
      ),
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  authenticationController = ZeroWasteAuthController();
  LoadingOverlay.defaultPlaceholder = Container(
    padding: EdgeInsets.all(8),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Pallette.content.withOpacity(0.4),
    ),
    child: ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
        strokeWidth: 1,
      ),
    ),
  );

  socketApi.logging = kDebugMode;
  await socketApi.connection.whenConnected;
  await authenticationController.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (c) => AuthenticationProvider(),
          lazy: false,
        ),
      ],
      child: NotificationListener(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollUpdateNotification ||
                scrollNotification is ScrollEndNotification) {
              _scrollUpdates.add(scrollNotification.metrics);
            }
            return false;
          },
          child: await application),
    ),
  );
}
