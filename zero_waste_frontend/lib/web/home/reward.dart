import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/globals.dart';

class Reward extends StatelessWidget {
  String title;
  String subtitle;

  Reward({
    @required this.title,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 16, right: 16),
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Pallette.accent),
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Pallette.shadows,
                blurRadius: 8,
              ),
            ],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Center(
                      child: Icon(
                    Icons.star,
                    size: 20,
                    color: Pallette.accent,
                  )),
                ),
                Expanded(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Pallette.accent,
                            fontSize: 9),
                      ),
                      Container(height: 1,),
                      Text(
                        subtitle,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Pallette.accent,
                            fontSize: 13
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          )),
    );
  }
}
