import 'package:flutter/material.dart';
import 'package:flutter_train_app/model/ticket.dart';
import 'package:flutter_train_app/pages/bookings/widgets/bookings_list.dart';

class MyBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as List<Ticket>;
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
            for (var i = 0; i < args.length; i++) ...[
              BookingsList(i),
              if (i < args.length) SizedBox(height: 4)
            ]
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
      ), // 홈 및 예약확인 바텀 앱 바
    );
  }
}
