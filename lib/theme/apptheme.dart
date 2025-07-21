import 'package:flutter/material.dart';

class Apptheme {
  static const String fontFamily = "BubblegumSans";
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    //app bar theme
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 52,
        fontFamily: fontFamily,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),

    //text theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
      bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      bodySmall: TextStyle(fontSize: 30),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade400,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(iconSize: WidgetStateProperty.all(26)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(),
  );
}
