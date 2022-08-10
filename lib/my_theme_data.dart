import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFF5D9CEC);
  static const Color lightScaffoldBackground = Color(0xFFDFECDB);
  static const Color green = Color(0xFFDFECDB);
  static const Color red = Color(0xFFEC4B4B);

  static final lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightScaffoldBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: Colors.transparent,
      selectedIconTheme: IconThemeData(size: 36),
      unselectedIconTheme: IconThemeData(size: 36)
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: lightPrimary
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black
      )
    )

  );
}