import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/providers/scale_provider.dart';
import 'package:zero_waste_frontend/web/home/purchase.dart';
import 'package:zero_waste_frontend/web/home/rewards.dart';
import 'package:zero_waste_frontend/web/home/stats.dart';

class Scale extends StatefulWidget {
  const Scale({Key key}) : super(key: key);

  @override
  _ScaleState createState() => _ScaleState();
}

const titleStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 36,
  color: Pallette.primary,
);

const waitingStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 30,
  color: Pallette.primary,
);

const columnNameStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 25,
  color: Pallette.primary,
);

class _ScaleState extends State<Scale> {
  final _curve = Curves.easeInOutQuad;
  final _duration = Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();
  }

  Widget _getLogo() {
    return Column(
      children: [
        Text('ZERO', textAlign: TextAlign.center, style: titleStyle),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text('WASTE',
              textAlign: TextAlign.center,
              style: titleStyle.copyWith(fontSize: 46.0)),
        ),
      ],
    );
  }

  Widget _getTop() {
    return Column(
      children: [
        _getLogo(),
        // ElevatedButton(
        //     onPressed: () =>
        //         this.setState(() {
        //           _expanded = !_expanded;
        //         }),
        //     child: Text('toggle')),
      ],
    );
  }

  Widget _getAnimatedDivider(BuildContext context, bool expanded) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      curve: _curve,
      duration: _duration,
      width: expanded ? screenWidth * 0.95 : screenWidth * 0.75,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedOpacity(
            duration: _duration,
            curve: _curve,
            opacity: expanded ? 1 : 0,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    'REWARDS',
                    style: columnNameStyle,
                  )),
                ),
                Container(
                  width: 32,
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    'STATS',
                    style: columnNameStyle,
                  )),
                ),
                Container(
                  width: 32,
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                      child: Text(
                    'PURCHASE',
                    style: columnNameStyle,
                  )),
                ),
              ],
            ),
          ),
          Container(
            height: 4,
          ),
          AnimatedContainer(
            curve: _curve,
            duration: _duration,
            height: 4,
            width: expanded ? screenWidth * 0.95 : screenWidth * 0.75,
            color: Pallette.primary,
          ),
        ],
      ),
    );
  }

  Widget _getAnimatedStats(bool expanded) {
    final s = MediaQuery.of(context).size;
    final screenWidth = s.width;
    final screenHeight = s.height;
    return Center(
      child: AnimatedOpacity(
        duration: _duration,
        curve: _curve,
        opacity: expanded ? 1 : 0,
        child: AnimatedContainer(
          curve: _curve,
          duration: _duration,
          width: screenWidth * 0.95,
          height: expanded ? screenHeight * 0.7 : 0,
          child: SingleChildScrollView(
              child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Rewards(),
              ),
              Container(
                width: 32,
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Stats(),
                ),
              ),
              Container(
                width: 32,
              ),
              Expanded(
                flex: 2,
                child: Purchase(),
              ),
            ],
          )),
        ),
      ),
    );
  }

  Widget _getWaitingLabel(bool expanded) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: Center(
        child: AnimatedOpacity(
          opacity: expanded ? 0 : 1,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: Text(
            'WAITING FOR CONTAINER',
            textAlign: TextAlign.center,
            style: waitingStyle,
          ),
        ),
      ),
    );
  }

  Widget _getStack(bool expanded) {
    return Stack(
      children: [
        Positioned(child: _getAnimatedStats(expanded)),
        Positioned(
          child: _getWaitingLabel(expanded),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String tag = context.watch<ScaleProvider>().nfcId;
    bool expanded = tag != null && tag != '';

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _getTop(),
          Container(
            height: 48,
          ),
          _getAnimatedDivider(context, expanded),
          _getStack(expanded),
        ],
      ),
    );
  }
}
