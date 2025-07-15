import 'package:flutter/material.dart';
import 'package:flutter_train_app/model/ticket.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';

class SelectSeatButton extends StatelessWidget {
  SelectSeatButton(
      this.arrivalStation, this.departureStation, this.onbooked);

  String arrivalStation;
  String departureStation;

  void Function(Ticket) onbooked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: () async {
            if (arrivalStation != '선택' &&
                departureStation != '선택') {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SeatPage(
                        arrivalStation, departureStation);
                  },
                ),
              );
              if (result != null) {
                onbooked(result);
              }
            }
          }, // 역이 선택이면 좌석 선택 페이지로 넘어가지 않음
          child: Text(
            '좌석 선택',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )), // 버튼 속 text 옵션
    );
  }
}
