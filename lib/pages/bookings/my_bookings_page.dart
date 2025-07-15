import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/bookings/widgets/bookings_list.dart';

class MyBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('예약 확인'),
            SizedBox(width: 56),
          ],
        ),
      ), // 앱바 예매 확인
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            BookingsList(),
          ],
        ),
      ), // 예매 리스트 확인
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/homePage',
                        (Route<dynamic> route) => false,
                      );
                    },
                    icon: Icon(Icons.home))),
            Expanded(
              child: IconButton(
                  onPressed: () {
                    Navigator.popUntil(context,
                        ModalRoute.withName('/myBookingsPage'));
                  },
                  icon: Icon(Icons.confirmation_num)),
            )
          ],
        ),
      ), // 홈 및 예약확인 바텀 앱 바
    );
  }
}
