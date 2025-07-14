import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/widgets/select_seat_button.dart';
import 'package:flutter_train_app/pages/home/widgets/select_station_box.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String arrivalStation = '선택';
  String departureStation = '선택';
  List<String> selectedList = [];

  void onChangedStation(
      String stationName, String stationLabel) {
    setState(() {
      if (stationLabel == '출발역') {
        arrivalStation = stationName;
      } else if (stationLabel == '도착역') {
        departureStation = stationName;
      }
      selectedList = [arrivalStation, departureStation];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('기차 예매')),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SelectStationBox(
                          '출발역',
                          arrivalStation,
                          selectedList,
                          onChangedStation),
                    ),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.grey[400],
                    ),
                    Expanded(
                      child: SelectStationBox(
                          '도착역',
                          departureStation,
                          selectedList,
                          onChangedStation),
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            SelectSeatButton(arrivalStation, departureStation),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
