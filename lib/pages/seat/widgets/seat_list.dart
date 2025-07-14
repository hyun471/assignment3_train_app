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
        seatList(context, 'A', columnLabel),
        SizedBox(width: 4),
        seatList(context, 'B', columnLabel),
        SizedBox(width: 4),
        label(columnLabel),
        SizedBox(width: 4),
        seatList(context, 'C', columnLabel),
        SizedBox(width: 4),
        seatList(context, 'D', columnLabel),
      ],
    );
  }

  GestureDetector seatList(
      BuildContext context, String rowName, int colNum) {
    return GestureDetector(
      onTap: () {
        onSelcetedSeat(rowName, colNum);
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: rowName == row && colNum == col
              ? Theme.of(context).highlightColor
              : Theme.of(context).dividerColor,
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
