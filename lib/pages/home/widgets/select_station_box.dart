import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/train_list/train_list_page.dart';

class SelectStationBox extends StatelessWidget {
  SelectStationBox(this.stationLabel, this.selectedStaionName,
      this.onSelectedStation);

  String stationLabel;
  String selectedStaionName;
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
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TrainListPage(
                        stationLabel, onSelectedStation);
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
