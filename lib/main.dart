import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/bookings/my_bookings_page.dart';
import 'package:flutter_train_app/pages/home/home_page.dart';
import 'package:flutter_train_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/homePage',
        routes: {
          '/homePage': (context) => HomePage(),
          '/myBookingsPage': (context) => MyBookingsPage()
        },
        themeMode: ThemeMode.system,
        theme: lightTheme,
        darkTheme: darkTheme, // 테마 설정
        home: HomePage());
  }
}
