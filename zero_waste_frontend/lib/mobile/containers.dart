
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

class Containers extends StatefulWidget {
  const Containers({Key key}) : super(key: key);

  @override
  _ContainersState createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    List<Widget> containers = provider.containers.data.containers.values
        .map((c) => CardButton(
              text: c.name,
              onClick: () {},
              color: Pallette.primary,
              leadingIcon: Icons.shopping_bag,
            ))
        .toList();

    if (containers.isEmpty) {
      containers = [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 32.0),
            child: Column(
              children: [
                Text(
                  'No containers',
                  style: TextStyle(
                      color: Pallette.primary,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0, left: 32.0, right: 32.0),
                  child: Text(
                      'No containers added. Scan NFC tag on a container to add it here.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Pallette.primary)),
                )
              ],
            ),
          ),
        )
      ];
    }

    return Scaffold(
      body: MainLayout(
        title: 'Containers',
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
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Pallette.backgroundGrey,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 16.0,
                                        spreadRadius: 4.0,
                                        color: Pallette.strongShadows,
                                        offset: Offset(0.0, 10.0))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 32.0, vertical: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InfoText(
                                      title:
                                          '${provider.containers.data.containers.values.length}',
                                      subtitle: 'containers',
                                      color: Pallette.primary,
                                    ),
                                    InfoText(
                                      title: provider.containers.data.containers
                                              .isNotEmpty
                                          ? timeago.format(socketApi.util
                                              .toDateTime(provider.containers
                                                  .data.containers.values
                                                  .map((c) => c.dateCreated)
                                                  .reduce(
                                                      (a, b) => a < b ? a : b)))
                                          : '/',
                                      subtitle: 'oldest container',
                                      color: Pallette.primary,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 36.0,
                                bottom: 32.0,
                                left: 16.0,
                                right: 16.0),
                            child: Column(
                              children: containers,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
