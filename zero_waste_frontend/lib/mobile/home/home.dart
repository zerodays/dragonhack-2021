import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/mobile/home/info_card.dart';

const textShadow = Shadow(
  blurRadius: 2.0,
  color: Colors.black,
  offset: Offset(0.0, 1.0),
);

const titleStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
    color: Pallette.primary,
    shadows: [textShadow]);

class Home extends StatefulWidget {
  static const String route = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
        var identifier = tag.data['nfca']['identifier'];
        print(identifier);
        var identifierStr = '';
        for (var i in identifier) {
          identifierStr += i.toRadixString(16).padLeft(2, '0');
        }

        print(identifierStr);
        // TODO: @matej nared neki druzga kt printanje.
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return FutureBuilder<bool>(
      future: NfcManager.instance.isAvailable(),
      builder: (context, ss) => ss.data != true ? Center(child: Text('NFCManager is not available')) : Scaffold(
          body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: height / 3.7,
              child: Image.asset(
                'assets/sea.png',
                fit: BoxFit.cover,
              )),
          Positioned(
              top: height / 10,
              child: Column(
                children: [
                  Text('ZERO', textAlign: TextAlign.center, style: titleStyle),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('WASTE',
                        textAlign: TextAlign.center,
                        style: titleStyle.copyWith(fontSize: 46.0)),
                  ),
                ],
              )),
          Positioned(
            left: 16.0,
            right: 16.0,
            top: height / 2.6,
            child: InfoCard(),
          ),
        ],
      )),
    );
  }
}
