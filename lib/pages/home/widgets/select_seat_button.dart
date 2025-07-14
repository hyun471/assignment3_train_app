import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';

class SelectSeatButton extends StatelessWidget {
  SelectSeatButton(this.arrivalStation, this.departureStation);

  String arrivalStation;
  String departureStation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: () {
            if (arrivalStation != '선택' &&
                departureStation != '선택') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SeatPage(
                        arrivalStation, departureStation);
                  },
                ),
              );
            }
          },
          child: Text(
            '좌석 선택',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
