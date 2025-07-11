import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/bottom_button.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_list.dart';

class SeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('좌석 선택'),
            SizedBox(width: 56),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '수서',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              Icon(Icons.arrow_circle_right_outlined, size: 30),
              Text(
                '부산',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              selectSeat(),
              SizedBox(width: 20),
              selectSeat(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              label('A'),
              SizedBox(width: 4),
              label('B'),
              SizedBox(width: 58),
              label('C'),
              SizedBox(width: 4),
              label('D'),
            ],
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 71),
              child: ListView(
                children: [
                  for (int i = 1; i <= 20; i++) ...[
                    SeatList('$i'),
                    if (i != 20) SizedBox(height: 8),
                  ]
                ],
              ),
            ),
          ),
          BottomButton()
        ],
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

  Row selectSeat() {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(width: 4),
        Text('선택됨'),
      ],
    );
  }
}
