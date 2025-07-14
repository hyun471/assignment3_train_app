import 'package:flutter/material.dart';

class SeatList extends StatelessWidget {
  SeatList(
      this.columnLabel, this.row, this.col, this.onSelcetedSeat);
  int columnLabel;
  String? row;
  int? col;
  void Function(String row, int col) onSelcetedSeat;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        seatList('A', columnLabel),
        SizedBox(width: 4),
        seatList('B', columnLabel),
        SizedBox(width: 4),
        label(columnLabel),
        SizedBox(width: 4),
        seatList('C', columnLabel),
        SizedBox(width: 4),
        seatList('D', columnLabel),
      ],
    );
  }

  GestureDetector seatList(String rowName, int colNum) {
    return GestureDetector(
      onTap: () {
        onSelcetedSeat(rowName, colNum);
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: rowName == row && colNum == col
              ? Colors.purple
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  SizedBox label(int label) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Center(
        child: Text(
          '$label',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
