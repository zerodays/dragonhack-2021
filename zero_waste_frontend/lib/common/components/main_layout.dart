import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/globals.dart';

const textShadow = Shadow(
  blurRadius: 2.0,
  color: Colors.black,
  offset: Offset(0.0, 1.0),
);

const titleStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 25,
    color: Pallette.primary,
    shadows: [textShadow]);

class MainLayout extends StatelessWidget {
  final Widget child;
  final String title;

  MainLayout({Key key, this.child, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 84.0,
              child: Image.asset(
                'assets/sea.png',
                fit: BoxFit.cover,
              )),
          Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Row(
                children: [
                  Container(
                    width: 64.0,
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(Icons.keyboard_backspace)),
                  ),
                  Expanded(
                      child: Text(
                    title.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: titleStyle,
                  )),
                  Container(
                    width: 64.0,
                  )
                ],
              )),
          Positioned(
            left: 16.0,
            right: 16.0,
            top: 160.0,
            child: child,
          ),
        ],
      ),
    );
  }
}
