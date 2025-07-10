import 'package:flutter/material.dart';

class SelectStationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '출발역',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
            child: Text(
          '선택',
          style: TextStyle(
            fontSize: 40,
          ),
        )),
      ],
    );
  }
}
