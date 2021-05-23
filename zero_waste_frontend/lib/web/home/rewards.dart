import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/common/providers/info_provider.dart';
import 'package:zero_waste_frontend/proto/rewards.pb.dart';
import 'package:provider/provider.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    final screenWidth = s.width;
    final screenHeight = s.height;

    List<Reward> rewards = context.watch<InfoProvider>().rewards;

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
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    children: rewards.map((r) => Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                  child: Icon(
                                    Icons.star,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
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
                        )).toList(),
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
