import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/bottom_button.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_list.dart';

class SeatPage extends StatefulWidget {
  SeatPage(this.arrivalStation, this.departureStation);

  String arrivalStation;
  String departureStation;

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  String? selectedRow;
  int? selectedCol;

  void onSelectedSeat(String row, int col) {
    setState(() {
      selectedRow = row;
      selectedCol = col;
    });
  } // 역 선택 시 사용될 좌표

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
      ), // AppBar 옵션
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.arrivalStation,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).highlightColor),
              ),
              Icon(Icons.arrow_circle_right_outlined, size: 30),
              Text(
                widget.departureStation,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).highlightColor),
              ),
            ],
          ), // 출발역, 도착역 역이름 및 아이콘 UI 표시
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              selectSeat(true),
              SizedBox(width: 20),
              selectSeat(false),
            ],
          ), // 좌석의 선택 유무 UI 표시
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
          ), // 좌석의 행 레이블 표시
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 71),
              child: ListView(
                children: [
                  for (int i = 1; i <= 20; i++) ...[
                    SeatList(i, selectedRow, selectedCol,
                        onSelectedSeat),
                    if (i != 20) SizedBox(height: 8),
                  ]
                ],
              ),
            ),
          ), // 좌석 및 좌석의 열 레이블 표시
          BottomButton(
              widget.arrivalStation,
              widget.departureStation,
              selectedRow,
              selectedCol) // 예매하기 버튼
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.home))),
            Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.confirmation_num)),
            )
          ],
        ),
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
  } // 좌석 행 레이블 위젯

  Row selectSeat(bool isSelected) {
    String selectedName;
    isSelected ? selectedName = '선택됨' : selectedName = '선택안됨';
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).highlightColor
                : Theme.of(context).dividerColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(width: 4),
        Text(selectedName),
      ],
    );
  } // 좌석 선택 유무 박스 위젯
}
