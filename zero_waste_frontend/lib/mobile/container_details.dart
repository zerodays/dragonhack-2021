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

class ContainerDetails extends StatefulWidget {
  final RContainer container;

  const ContainerDetails({Key key, @required this.container}) : super(key: key);

  @override
  _ContainerDetailsState createState() => _ContainerDetailsState();
}

class _ContainerDetailsState extends State<ContainerDetails> {
  charts.Series dataMass, dataWaste, dataCo2;
  int tab = 0;

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

    if (dataMass == null && c != null) {
      dataMass = charts.Series<TimePoint, DateTime>(
        id: 'Mass',
        data: c.mass,
        domainFn: (data, _) => socketApi.util.toDateTime(data.time),
        measureFn: (data, _) => data.value,
      );
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
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              children: [
                RichText(
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
                          text: ' of waste. There is roughly ', style: normal),
                      TextSpan(text: '${c.co2SavedG}g', style: bold),
                      TextSpan(
                          text: ' less CO2 in the atmosphere thanks to you.',
                          style: normal),
                    ])),
                Container(
                  height: 360,
                  child: charts.TimeSeriesChart(
                    [dataMass],
                    animate: true,
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
