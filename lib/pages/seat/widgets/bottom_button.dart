import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/model/ticket.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.arrStation, this.depStation,
      this.selectedRow, this.selectedCol);
  String arrStation;
  String depStation;
  String? selectedRow;
  int? selectedCol;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
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
                                  BorderRadius.circular(20))),
                      onPressed: () async {
                        if (selectedRow == null &&
                            selectedCol == null) {
                        } else {
                          bool? result =
                              await showCupertinoDialog(
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
                                            Navigator.pop(
                                                context);
                                          },
                                          child: Text('취소'),
                                        ),
                                        CupertinoDialogAction(
                                            isDefaultAction:
                                                true,
                                            onPressed: () {
                                              Navigator.pop(
                                                context,
                                                true,
                                              );
                                            },
                                            child: Text('확인'))
                                      ],
                                    );
                                  });
                          if (result == true) {
                            Navigator.pop(
                                context,
                                Ticket(arrStation, depStation,
                                    selectedRow!, selectedCol!));
                          }
                        }
                      },
                      child: Text(
                        '예매 하기',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
