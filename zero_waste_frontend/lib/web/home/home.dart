import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:provider/provider.dart';

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
      body: DelayedBuilder(
        stillLoading: provider.loading,
        builder: (context) => Container(),
      ),
    );
  }
}
