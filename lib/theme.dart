import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.light,
    ),
    hoverColor: Colors.white,
    dividerColor: Colors.grey[200],
    highlightColor: Colors.purple,
    focusColor: Colors.grey[200],
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    )));

final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.dark,
    ),
    hoverColor: Colors.black,
    dividerColor: Colors.grey[200],
    highlightColor: Colors.purple[200],
    focusColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor:
          WidgetStatePropertyAll(Colors.purple[200]),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    )));
