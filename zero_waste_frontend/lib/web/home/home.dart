import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/web/home/scale.dart';

class Home extends StatefulWidget {
  static const String route = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final provider = context.watch<HomeP>();
    return Scaffold(
      backgroundColor: Pallette.backgroundGrey,
      body: DelayedBuilder(
        stillLoading: false,
        builder: (context) => Scale(),
      ),
    );
  }
}
