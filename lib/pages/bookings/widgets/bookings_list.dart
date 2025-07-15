import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/model/ticket.dart';

class BookingsList extends StatelessWidget {
  BookingsList(this.bookedNum);
  int bookedNum;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as List<Ticket>;
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          bookedStaionName(context, args, bookedNum),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          Expanded(
              child: bookedSeatNum(context, args, bookedNum))
        ],
      ),
    );
  }

  Container bookedSeatNum(
      BuildContext context, List<Ticket> args, int bookedNum) {
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
            '${args[bookedNum].rowNum} - ${args[bookedNum].colNum}',
            style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).highlightColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Container bookedStaionName(
      BuildContext context, List<Ticket> args, int bookedNum) {
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
                child: Text('${args[bookedNum].arrStation}',
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
                child: Text('${args[bookedNum].depStation}',
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
  }
}
