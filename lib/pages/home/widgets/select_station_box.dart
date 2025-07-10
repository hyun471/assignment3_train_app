import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/train_list/train_list_page.dart';

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TrainListPage();
                  },
                ),
              );
            },
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
