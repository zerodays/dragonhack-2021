import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/globals.dart';

const coloredText =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 25, color: Pallette.primary);

class InfoText extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;

  const InfoText({Key key, this.color, @required this.title, @required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: coloredText.copyWith(color: color),
        ),
        Text(
          subtitle,
          style: coloredText.copyWith(fontSize: 15, color: color),
        )
      ],
    );
  }
}
