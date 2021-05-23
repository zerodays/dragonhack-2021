import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:zero_waste_frontend/common/components/card_button.dart';
import 'package:zero_waste_frontend/common/components/info_text.dart';
import 'package:zero_waste_frontend/common/components/main_layout.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/providers/home_provider.dart';
import 'package:zero_waste_frontend/common/providers/reward_provider.dart';
import 'package:zero_waste_frontend/mobile/container_details.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    final provider = context.watch<RewardProvider>();
    final rewards = provider.rewards;

    return Scaffold(
      body: MainLayout(
        title: 'Rewards',
        child: DelayedBuilder(
            stillLoading: provider.containers == null,
            builder: (context) => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              child: Container(
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
                child: Column(
                  children: rewards.map((r) => Card(
                    child: Padding(
                      child: Column(
                        children: [
                          Text(r.reason),
                          Text(r.reward),
                        ],
                      ),
                    ),
                  )).toList(),
                ),
              ),
            )),
      ),
    );
  }
}
