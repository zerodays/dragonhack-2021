import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/components/main_layout.dart';
import 'package:zero_waste_frontend/common/globals.dart';
import 'package:zero_waste_frontend/common/providers/container_provider.dart';
import 'package:zero_waste_frontend/proto/containers.pb.dart';

final bold = TextStyle(
    fontWeight: FontWeight.bold, color: Pallette.primary, fontSize: 17);
final normal = TextStyle(color: Pallette.primary, fontSize: 17);

const tabs = ['mass', 'co2', 'waste'];

class ContainerDetails extends StatefulWidget {
  final RContainer container;

  const ContainerDetails({Key key, @required this.container}) : super(key: key);

  @override
  _ContainerDetailsState createState() => _ContainerDetailsState();
}

class _ContainerDetailsState extends State<ContainerDetails> {
  int currentTab = 0;

  var dataMass = charts.Series<TimeSeriesData, DateTime>(
    id: 'Mass',
    data: [
      TimeSeriesData(DateTime(2021, 4, 2), 0),
      TimeSeriesData(DateTime(2021, 4, 5), 266),
      TimeSeriesData(DateTime(2021, 4, 12), 392),
      TimeSeriesData(DateTime(2021, 4, 20), 501),
      TimeSeriesData(DateTime(2021, 4, 25), 679),
      TimeSeriesData(DateTime(2021, 5, 5), 944),
      TimeSeriesData(DateTime(2021, 5, 13), 1138),
      TimeSeriesData(DateTime(2021, 5, 20), 1636),
      TimeSeriesData(DateTime(2021, 5, 23), 1717),
    ],
    domainFn: (x, _) => x.time,
    measureFn: (x, _) => x.dataPoint,
  );

  var dataCo2 = charts.Series<TimeSeriesData, DateTime>(
    id: 'Mass',
    data: [
      TimeSeriesData(DateTime(2021, 4, 2), 0),
      TimeSeriesData(DateTime(2021, 4, 5), 143),
      TimeSeriesData(DateTime(2021, 4, 12), 309),
      TimeSeriesData(DateTime(2021, 4, 20), 398),
      TimeSeriesData(DateTime(2021, 4, 25), 499),
      TimeSeriesData(DateTime(2021, 5, 5), 649),
      TimeSeriesData(DateTime(2021, 5, 13), 793),
      TimeSeriesData(DateTime(2021, 5, 20), 919),
      TimeSeriesData(DateTime(2021, 5, 23), 1059),
    ],
    domainFn: (x, _) => x.time,
    measureFn: (x, _) => x.dataPoint,
  );

  var dataWaste = charts.Series<TimeSeriesData, DateTime>(
    id: 'Mass',
    data: [
      TimeSeriesData(DateTime(2021, 4, 2), 0),
      TimeSeriesData(DateTime(2021, 4, 5), 5),
      TimeSeriesData(DateTime(2021, 4, 12), 9),
      TimeSeriesData(DateTime(2021, 4, 20), 14),
      TimeSeriesData(DateTime(2021, 4, 25), 19),
      TimeSeriesData(DateTime(2021, 5, 5), 22),
      TimeSeriesData(DateTime(2021, 5, 13), 26),
      TimeSeriesData(DateTime(2021, 5, 20), 27),
      TimeSeriesData(DateTime(2021, 5, 23), 31),
    ],
    domainFn: (x, _) => x.time,
    measureFn: (x, _) => x.dataPoint,
  );

  @override
  void initState() {
    final provider = context.read<ContainerProvider>();
    provider.loadContainer(widget.container.nfcId);

    super.initState();
  }

  String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ContainerProvider>();
    final c = provider.containers[widget.container.nfcId];

    List<Widget> tabWidgets = [];
    for (int i = 0; i < 3; i++) {
      tabWidgets.add(Expanded(
        child: Material(
          color: i == currentTab ? Pallette.primary : null,
          child: InkWell(
            onTap: () => setState(() {
              currentTab = i;
            }),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
              child: Text(
                tabs[i].toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: i == currentTab ? Colors.white : Pallette.primary,
                ),
              ),
            ),
          ),
        ),
      ));
    }

    List<Widget> children;

    if (currentTab == 0) {
      children = [
        Container(
          key: UniqueKey(),
          height: 300,
          child: charts.TimeSeriesChart(
            [dataMass],
            animate: true,
          ),
        ),
      ];
    } else if (currentTab == 1) {
      children = [
        Container(
          key: UniqueKey(),
          height: 300,
          child: charts.TimeSeriesChart(
            [dataCo2],
            animate: true,
          ),
        ),
      ];
    } else {
      children = [
        Container(
          key: UniqueKey(),
          height: 300.0,
          child: charts.TimeSeriesChart(
            [dataWaste],
            animate: true,
          ),
        ),
      ];
    }

    return Scaffold(
        body: DelayedBuilder(
      fadeDuration: Duration(milliseconds: 200),
      stillLoading: provider.containers[widget.container.nfcId] == null,
      builder: (context) => MainLayout(
        title: widget.container.name,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 8.0),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(text: widget.container.name, style: bold),
                        TextSpan(
                            text: ' started it\'s journey at ', style: normal),
                        TextSpan(text: c.originSeller, style: bold),
                        TextSpan(text: ' in ', style: normal),
                        TextSpan(text: c.originLocation, style: bold),
                        TextSpan(text: ' on ', style: normal),
                        TextSpan(
                            text: formatDate(socketApi.util
                                .toDateTime(widget.container.dateCreated)),
                            style: bold),
                        TextSpan(text: '. It transported ', style: normal),
                        TextSpan(text: '${c.foodG}g', style: bold),
                        TextSpan(text: ' of food and saved ', style: normal),
                        TextSpan(text: '${c.co2SavedG}g', style: bold),
                        TextSpan(
                            text: ' of waste. There is roughly ',
                            style: normal),
                        TextSpan(text: '${c.co2SavedG}g', style: bold),
                        TextSpan(
                            text: ' less CO2 in the atmosphere thanks to you.',
                            style: normal),
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    color: Colors.grey.shade300,
                    child: Row(
                      children: tabWidgets,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: children,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class TimeSeriesData {
  final DateTime time;
  final double dataPoint;

  TimeSeriesData(this.time, this.dataPoint);
}
