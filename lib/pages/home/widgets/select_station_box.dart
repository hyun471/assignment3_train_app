import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/train_list/train_list_page.dart';

class SelectStationBox extends StatelessWidget {
  SelectStationBox(this.stationLabel, this.selectedStaionName,
      this.selectedList, this.onSelectedStation);

  String stationLabel;
  String selectedStaionName;
  List<String> selectedList;

  void Function(String stationName, String stationLabel)
      onSelectedStation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          stationLabel,
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).highlightColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TrainListPage(stationLabel,
                        selectedList, onSelectedStation);
                  },
                ),
              );
            },
            child: Text(
              selectedStaionName,
              style: TextStyle(
                fontSize: 40,
              ),
            )),
      ],
    );
  }
}
