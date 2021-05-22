import 'package:flutter/material.dart';
import 'package:gm5_utils/extended_functionality/context.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

class Home extends StatefulWidget {
  static const String route = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SubscriptionsMixin {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColorDark,
      body: Container(),
    );
  }
}
