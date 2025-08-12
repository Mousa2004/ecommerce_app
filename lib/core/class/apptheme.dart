import 'package:flutter/material.dart';

class Apptheme {
  static const Color blue = Color(0xff037EEE);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Color(0xffBCBEC0);
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 28,
        color: white,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 26,
        color: black,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        color: white,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
