import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.selectedRow, this.selectedCol);
  String? selectedRow;
  int? selectedCol;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300]!,
                offset: Offset(0, 2),
                blurRadius: 6,
                spreadRadius: 2)
          ],
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(20))),
      child: Center(
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(20)),
                          backgroundColor: Colors.purple),
                      onPressed: () {
                        if (selectedRow == null &&
                            selectedCol == null) {
                        } else {
                          showCupertinoDialog(
                              context: context,
                              builder: (context) {
                                return CupertinoAlertDialog(
                                  title: Text('예약 하시겠습니까?'),
                                  content: Text(
                                      '좌석 번호 : $selectedRow - $selectedCol'),
                                  actions: [
                                    CupertinoDialogAction(
                                      isDefaultAction: true,
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop();
                                      },
                                      child: Text('취소'),
                                    ),
                                    CupertinoDialogAction(
                                        isDefaultAction: true,
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                        },
                                        child: Text('확인'))
                                  ],
                                );
                              });
                        }
                      },
                      child: Text(
                        '예매 하기',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
