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
  void onChangedStation(
      String stationName, String stationLabel) {
    setState(() {
      if (stationLabel == '출발역') {
        arrivalStation = stationName;
      } else if (stationLabel == '도착역') {
        departureStation = stationName;
      }
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
                    SelectStationBox(
                        '출발역', arrivalStation, onChangedStation),
                    SizedBox(width: 50),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 50),
                    SelectStationBox('도착역', departureStation,
                        onChangedStation),
                  ]),
            ),
            SizedBox(height: 20),
            SelectSeatButton(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
