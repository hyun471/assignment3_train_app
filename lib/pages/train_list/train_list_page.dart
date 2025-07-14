import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/train_list/widgets/station_list.dart';

class TrainListPage extends StatelessWidget {
  TrainListPage(this.stationLabel, this.selectedList,
      this.onSelectedStation);

  String stationLabel;
  List<String> selectedList;
  void Function(String staionName, String stationLabel)
      onSelectedStation;

  List<String> stationList = [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
    '부산'
  ];

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
          for (int i = 0; i < stationList.length; i++) ...[
            if (!selectedList.contains(stationList[i]))
              StationList(stationList[i], stationLabel,
                  onSelectedStation),
          ]
        ],
      ),
    );
  }
}
