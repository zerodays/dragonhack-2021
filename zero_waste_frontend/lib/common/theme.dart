import 'package:flutter/material.dart';

import 'globals.dart';

ThemeData zeroWasteTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Pallette.primary,
  accentColor: Pallette.accent,
  scaffoldBackgroundColor: Pallette.background,
  backgroundColor: Pallette.background,
  disabledColor: Pallette.background,
  dividerColor: Pallette.accent.withOpacity(0.2),
  errorColor: Pallette.error,
  shadowColor: Pallette.shadows,
  dialogBackgroundColor: Colors.white,
  buttonColor: Pallette.primary,
  textTheme: TextTheme(
    button: TextStyle(
      fontWeight: FontWeight.w800,
    ),
    headline3: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w900,
    ),
    headline4: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w900,
    ),
    subtitle2: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ),
    headline1: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w900,
    ),
    headline2: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w900,
    ),
  ).apply(
    bodyColor: Pallette.content,
    displayColor: Pallette.content,
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Pallette.primary,
    selectionColor: Pallette.primary.withOpacity(0.2),
    selectionHandleColor: Pallette.primary,
  ),
  iconTheme: IconThemeData(
    color: Pallette.primary,
  ),
  // remove shadow for nested navigators
  pageTransitionsTheme: PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.fuchsia: FadeUpwardsPageTransitionsBuilder(),
    },
  ),
);
