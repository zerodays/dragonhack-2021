import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/providers/home_provider.dart';
import 'package:zero_waste_frontend/mobile/containers.dart';

import '../../common/components/card_button.dart';
import '../../common/components/info_text.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    return DelayedBuilder(
      stillLoading: provider.homeInfo == null,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: Pallette.backgroundGrey,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Pallette.strongShadows,
              blurRadius: 8.0,
              spreadRadius: 4.0,
              offset: Offset(3.0, 0),
            )
          ],
        ),
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
                      title: '${provider.homeInfo.foodG}g',
                      subtitle: 'food',
                      color: Pallette.primary,
                    ),
                    InfoText(
                      title: '${provider.homeInfo.wasteSavedG}g',
                      subtitle: 'less waste',
                      color: Pallette.primary,
                    ),
                    InfoText(
                      title: '${provider.homeInfo.co2SavedG}g',
                      subtitle: 'less co2',
                      color: Pallette.primary,
                    ),
                  ],
                ),
              ),
              Container(height: 36),
              CardButton(
                text: 'My containers',
                leadingIcon: Icons.shopping_bag,
                color: Pallette.primary,
                count: 3,
                onClick: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Containers()),
                ),
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
                  },
                  icon: const Icon(
                    Icons.share,
                    color: Pallette.primary,
                  ),
                  label: Text('Spread the world'.toUpperCase()))
            ],
          ),
        ),
      ),
    );
  }
}
