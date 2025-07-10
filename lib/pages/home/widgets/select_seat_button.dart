import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';

class SelectSeatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SeatPage();
                },
              ),
            );
          },
          child: Text(
            '좌석 선택',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
