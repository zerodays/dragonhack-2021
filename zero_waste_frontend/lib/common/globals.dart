import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/uploader/uploader.dart';
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Pallette {
  static const MaterialColor primary = MaterialColor(0xFF1D80A9, <int, Color>{
    50: Color(0xFFE4F0F5),
    100: Color(0xFFBBD9E5),
    200: Color(0xFF8EC0D4),
    300: Color(0xFF61A6C3),
    400: Color(0xFF3F93B6),
    500: Color(0xFF1D80A9),
    600: Color(0xFF1A78A2),
    700: Color(0xFF156D98),
    800: Color(0xFF11638F),
    900: Color(0xFF0A507E),
  });

  static const Color accent = Color(0xFFCE9B00);

  static const Color content = Color(0xFF4F4F4F);

  static const Color error = Colors.redAccent;

  static const Color background = Color(0xFFF7FAFB);

  static const Color shadows = Color(0x19000000);

  static const Color strongShadows = Color(0x30000000);

  static const Color bgLight = Color(0xFFFFFFFF);

  static const Color dialogBarrier = Color(0x0b000000);

  static const Color dialogBarrierWhite = Colors.white70;

  static const Color highlight = Color(0x0AFFFFFF);

  static final backgroundGrey = Colors.grey.shade100;
  static final almostWhite = Colors.grey.shade50;
}

String HOST = env["API_HOST"];
String SCHEME = env["API_SCHEME"];

String SOCKET_SCHEME = SCHEME == 'https' ? 'wss' : 'ws';

SocketApi socketApi = SocketApi('$SOCKET_SCHEME://$HOST/ws/');

FPSUploader uploader = FPSUploader(socketApi);

abstract class TextFormatters {
  static NumberFormat rate = NumberFormat("###.##", "sl_SI");
}

abstract class DateFormatters {
  static DateFormat month = DateFormat('d. M.', 'sl_SI');
  static DateFormat date = DateFormat('d. M. y', 'sl_SI');
  static DateFormat inputDate = DateFormat('d.M.y', 'sl_SI');
  static DateFormat inputTime = DateFormat('HH:mm', 'sl_SI');
}

String imageStoreDir;

Stream<ScrollMetrics> scrollUpdates;
