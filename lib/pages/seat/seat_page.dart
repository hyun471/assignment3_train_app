import 'package:flutter/material.dart';

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
            children: [
              SizedBox(height: 10),
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
            children: [
              Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Text('data'),
            ],
          )
        ],
      ),
    );
  }
}
