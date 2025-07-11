import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/train_list/widgets/station_list.dart';

class TrainListPage extends StatelessWidget {
  TrainListPage(this.stationLabel, this.onSelectedStation);

  String stationLabel;
  void Function(String staionName, String stationLabel)
      onSelectedStation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(stationLabel),
          SizedBox(width: 56),
        ],
      )),
      body: Column(
        children: [
          StationList('수서', stationLabel, onSelectedStation),
          StationList('동탄', stationLabel, onSelectedStation),
          StationList('평택지제', stationLabel, onSelectedStation),
          StationList('천안아산', stationLabel, onSelectedStation),
          StationList('오송', stationLabel, onSelectedStation),
          StationList('대전', stationLabel, onSelectedStation),
          StationList('김천구미', stationLabel, onSelectedStation),
          StationList('동대구', stationLabel, onSelectedStation),
          StationList('경주', stationLabel, onSelectedStation),
          StationList('울산', stationLabel, onSelectedStation),
          StationList('부산', stationLabel, onSelectedStation),
        ],
      ),
    );
  }
}
