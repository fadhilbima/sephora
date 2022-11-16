import 'package:flutter/material.dart';

class AppTheme {
  ///BackgroundColor
  static const scaffColor = Color(0xFFF3F7FD);
  ///ButtonStyle
  static const buttonColor = Color(0xFF2F82FF);
  static final buttonBorder = BorderRadius.circular(10);
  static final buttonPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 22);
  static final buttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: buttonBorder,
      ),
      backgroundColor: buttonColor,
      fixedSize: Size.fromHeight(40),
      textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)
    )
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: scaffColor,
    elevatedButtonTheme: buttonTheme,
  );
}