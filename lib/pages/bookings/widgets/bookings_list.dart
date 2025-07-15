import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          bookedStaionName(context),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          Expanded(child: bookedSeatNum(context))
        ],
      ),
    );
  }

  Container bookedSeatNum(BuildContext context) {
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
            'A-13',
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

  Container bookedStaionName(BuildContext context) {
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
                child: Text('금청구청',
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
                child: Text('부산',
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
