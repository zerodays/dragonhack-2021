import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:zero_waste_frontend/proto/containers.pb.dart';

class ContainerDetails extends StatefulWidget {
  final RContainer container;

  const ContainerDetails({Key key, @required this.container}) : super(key: key);

  @override
  _ContainerDetailsState createState() => _ContainerDetailsState();
}

class _ContainerDetailsState extends State<ContainerDetails> {
  final data = Series<TimeSeriesData, DateTime>(
    id: 'Test Data',
    data: [
      TimeSeriesData(DateTime(2017, 9, 19), 5),
      TimeSeriesData(DateTime(2017, 9, 26), 25),
      TimeSeriesData(DateTime(2017, 10, 3), 100),
      TimeSeriesData(DateTime(2017, 10, 10), 75),
    ],
    domainFn: (data, _) => data.time,
    measureFn: (data, _) => data.dataPoint,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeSeriesChart(
        [data],
        animate: true,
      ),
    );
  }
}

class TimeSeriesData {
  final DateTime time;
  final double dataPoint;

  TimeSeriesData(this.time, this.dataPoint);
}
