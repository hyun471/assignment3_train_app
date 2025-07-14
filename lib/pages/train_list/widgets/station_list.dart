import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/home_page.dart';

class StationList extends StatelessWidget {
  StationList(
    this.stationName,
    this.stationLabel,
    this.onSelectedStation,
  );

  String stationName;
  String stationLabel;
  void Function(String staionName, String stationLabel)
      onSelectedStation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 2))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                onSelectedStation(stationName, stationLabel);
                Navigator.pop(
                  context,
                );
              },
              child: Text(
                stationName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
