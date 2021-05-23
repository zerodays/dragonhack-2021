import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/components/main_layout.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/providers/home_provider.dart';
import 'package:zero_waste_frontend/common/providers/reward_provider.dart';
import 'package:zero_waste_frontend/proto/home.pb.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key key}) : super(key: key);

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  void initState() {
    final provider = context.read<RewardProvider>();
    final provider2 = context.read<HomeProvider>();
    provider.loadRewards(provider2.containers);

    super.initState();
  }

  Widget build(BuildContext context) {
    final provider = context.watch<RewardProvider>();
    final rewards = provider.rewards;

    return Scaffold(
      body: MainLayout(
        title: 'Rewards',
        child: DelayedBuilder(
            stillLoading: provider.rewards == null,
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: rewards
                            .map((r) => Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    side: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 0, 0, 0),
                                          child: Icon(
                                            Icons.star,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Text(
                                                r.reason.toUpperCase(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                r.reward.toUpperCase(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
