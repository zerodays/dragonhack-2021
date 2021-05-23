import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/components/info_text.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/providers/info_provider.dart';

final bold = TextStyle(
    fontWeight: FontWeight.bold, color: Pallette.primary, fontSize: 17);
final normal = TextStyle(color: Pallette.primary, fontSize: 17);

String formatDate(DateTime date) {
  return '${date.day}/${date.month}/${date.year}';
}

class Stats extends StatelessWidget {
  const Stats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    final screenWidth = s.width;
    final screenHeight = s.height;

    final provider = context.watch<InfoProvider>();
    final c = provider.container;

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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InfoText(
                              title: '${provider.container.foodG}g',
                              subtitle: 'food',
                              color: Pallette.primary,
                            ),
                            InfoText(
                              title: '${provider.container.wasteSavedG}g',
                              subtitle: 'less waste',
                              color: Pallette.primary,
                            ),
                            InfoText(
                              title: '${provider.container.co2SavedG}g',
                              subtitle: 'less co2',
                              color: Pallette.primary,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          Container(
            height: 32,
          ),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 8.0),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    'This container started it\'s journey at ',
                                style: normal),
                            TextSpan(text: c?.originSeller ?? "", style: bold),
                            TextSpan(text: ' in ', style: normal),
                            TextSpan(text: c?.originLocation ?? "", style: bold),
                            TextSpan(text: '. It transported ', style: normal),
                            TextSpan(text: '${c?.foodG ?? ""}g', style: bold),
                            TextSpan(
                                text: ' of food and saved ', style: normal),
                            TextSpan(text: '${c?.co2SavedG ?? ""}g', style: bold),
                            TextSpan(
                                text: ' of waste. There is roughly ',
                                style: normal),
                            TextSpan(text: '${c?.co2SavedG ?? ""}g', style: bold),
                            TextSpan(
                                text:
                                    ' less CO2 in the atmosphere thanks to you.',
                                style: normal),
                          ])),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
