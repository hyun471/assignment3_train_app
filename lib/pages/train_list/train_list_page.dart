import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/train_list/widgets/station_list.dart';

class TrainListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('출발역'),
          SizedBox(width: 56),
        ],
      )),
      body: Column(
        children: [
          StationList('수서'),
          StationList('동탄'),
          StationList('평택지제'),
          StationList('천안아산'),
          StationList('오송'),
          StationList('대전'),
          StationList('김천구미'),
          StationList('동대구'),
          StationList('경주'),
          StationList('울산'),
          StationList('부산'),
        ],
      ),
    );
  }
}
