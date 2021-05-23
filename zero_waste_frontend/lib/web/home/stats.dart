import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/web/home/reward.dart';

class Stats extends StatelessWidget {
  const Stats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    final screenWidth = s.width;
    final screenHeight = s.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.7,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text('TODO'),
              )
            ),
          ),
          Container(height: 32,),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Text(
                    'TODO'
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
