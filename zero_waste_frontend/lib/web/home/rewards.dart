import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/web/home/reward.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    final screenWidth = s.width;
    final screenHeight = s.height;

    return Container(
      width: screenWidth * 0.95,
      height: screenHeight * 0.7,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: ListView(
                    children: [
                      Reward(
                        title: 'OLDEST CONTAINER IN THE UNIVERSE',
                        subtitle: '10% DISCOUNT ON BEVERAGES',
                      ),
                      Reward(
                        title: 'OLDEST CONTAINER IN THE UNIVERSE',
                        subtitle: '10% DISCOUNT ON BEVERAGES',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
