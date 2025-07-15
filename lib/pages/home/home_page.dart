import 'package:flutter/material.dart';
import 'package:flutter_train_app/model/ticket.dart';
import 'package:flutter_train_app/pages/bookings/widgets/bookings_list.dart';
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

  List<Ticket> ticketList = [];

  void onBooked(Ticket ticket) {
    ticketList.add(ticket);
  }

  void onChangedStation(
      String stationName, String stationLabel) {
    setState(() {
      if (stationLabel == '출발역') {
        arrivalStation = stationName;
      } else if (stationLabel == '도착역') {
        departureStation = stationName;
      }
      selectedList = [arrivalStation, departureStation];
    }); // 역 선택 후 홈화면에 표시 함수
  }

  void onReverseStation(String orginalArr, String orginalDep) {
    setState(() {
      arrivalStation = orginalDep;
      departureStation = orginalArr;
    }); // 출발역과 도착역 스위치 함수
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('기차 예매')),
      ),
      backgroundColor: Theme.of(context).focusColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Theme.of(context).dividerColor)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SelectStationBox(
                          '출발역',
                          arrivalStation,
                          selectedList,
                          onChangedStation),
                    ), // 출발역 표시 박스
                    Column(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            onReverseStation(arrivalStation,
                                departureStation);
                          },
                          child: Icon(
                            Icons.sync_alt,
                            size: 30,
                            color:
                                Theme.of(context).highlightColor,
                          ), // 출발역, 도착역 스위치 아이콘
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 2,
                          height: 50,
                          color: Colors.grey[400],
                        ), // 구분선
                        Spacer(),
                      ],
                    ),
                    Expanded(
                      child: SelectStationBox(
                          '도착역',
                          departureStation,
                          selectedList,
                          onChangedStation),
                    ), // 도착역 표시 박스
                  ]),
            ),
            SizedBox(height: 20),
            SelectSeatButton(
                arrivalStation, departureStation, onBooked),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: IconButton(
                    onPressed: () {
                      Navigator.popUntil(context,
                          ModalRoute.withName('/homePage'));
                    },
                    icon: Icon(Icons.home))),
            Expanded(
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/myBookingsPage',
                        arguments: ticketList);
                  },
                  icon: Icon(Icons.confirmation_num)),
            )
          ],
        ),
      ),
    );
  }
}
