import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/globals.dart';

import 'card_button.dart';
import 'info_text.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Pallette.backgroundGrey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoText(
                    title: '10kg',
                    subtitle: 'food',
                    color: Pallette.primary,
                  ),
                  InfoText(
                    title: '200g',
                    subtitle: 'less waste',
                    color: Pallette.primary,
                  ),
                  InfoText(
                    title: '30g',
                    subtitle: 'less co2',
                    color: Pallette.primary,
                  ),
                ],
              ),
            ),
            Container(height: 36),
            const CardButton(
              text: 'My containers',
              leadingIcon: Icons.shopping_bag,
              color: Pallette.primary,
              count: 3,
            ),
            CardButton(
              text: 'Rewards',
              leadingIcon: Icons.star,
              color: Pallette.accent,
              count: 2,
            ),
            Container(height: 32.0),
            TextButton.icon(
                onPressed: () {
                  // TODO share.share
                },
                icon: const Icon(
                  Icons.share,
                  color: Pallette.primary,
                ),
                label: Text('Spread the world'.toUpperCase()))
          ],
        ),
      ),
    );
  }
}
