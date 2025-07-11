import 'package:flutter/material.dart';

class SeatList extends StatelessWidget {
  SeatList(this.columnLabel);
  String columnLabel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        seatList(),
        SizedBox(width: 4),
        seatList(),
        SizedBox(width: 4),
        label(columnLabel),
        SizedBox(width: 4),
        seatList(),
        SizedBox(width: 4),
        seatList(),
      ],
    );
  }

  Container seatList() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  SizedBox label(String label) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
