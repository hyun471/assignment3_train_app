import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/model/ticket.dart';

class BookingsList extends StatelessWidget {
  BookingsList(this.bookedNum, this.thicketList);
  int bookedNum;
  List<Ticket> thicketList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          bookedStaionName(context, thicketList, bookedNum),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          Expanded(
              child:
                  bookedSeatNum(context, thicketList, bookedNum))
        ],
      ),
    );
  } // 예약 좌석 정보 박스 위젯

  Container bookedSeatNum(BuildContext context,
      List<Ticket> thicketList, int bookedNum) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('좌석 번호',
              style: TextStyle(
                fontSize: 15,
              )),
          Text(
            '${thicketList[bookedNum].rowNum} - ${thicketList[bookedNum].colNum}',
            style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).highlightColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  } // 예약한 좌석 위치 정보 박스

  Container bookedStaionName(BuildContext context,
      List<Ticket> thicketList, int bookedNum) {
    return Container(
      height: 80,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                    '${thicketList[bookedNum].arrStation}',
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).highlightColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(width: 5),
            Icon(Icons.arrow_circle_right_outlined, size: 20),
            SizedBox(width: 5),
            Expanded(
              child: Center(
                child: Text(
                    '${thicketList[bookedNum].depStation}',
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).highlightColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  } // 예약한 티켓 출발역, 도착역 정보 박스
}
