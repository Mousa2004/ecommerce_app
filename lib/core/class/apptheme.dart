import 'package:flutter/material.dart';

class Apptheme {
  static const Color blue = Color(0xff037EEE);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 28,
        color: white,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 26,
        color: black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
