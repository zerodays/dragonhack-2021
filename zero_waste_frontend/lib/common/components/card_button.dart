import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/globals.dart';

typedef Callback = void Function();

class CardButton extends StatelessWidget {
  final String text;
  final IconData leadingIcon;
  final int count;
  final Color color;
  final Callback onClick;

  const CardButton(
      {Key key,
      this.text,
      this.leadingIcon,
      int count,
      this.color,
      this.onClick})
      : count = count ?? 0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget counter = count > 0
        ? Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: color)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                count.toString(),
                style: TextStyle(color: color, fontSize: 10),
              ),
            ),
          )
        : Container();

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Pallette.almostWhite,
      child: InkWell(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    leadingIcon,
                    color: color,
                  ),
                  Container(width: 12.0),
                  Text(
                    text.toUpperCase(),
                    style: TextStyle(
                        color: color,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
              counter
            ],
          ),
        ),
      ),
    );
  }
}
