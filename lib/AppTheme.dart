import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.blue.shade400,
      secondary: Colors.green.shade400, // This is similar to accent color in previous versions
    ),
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      elevation: 0,
      // brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.green.shade400,
      secondary: Colors.blue.shade400, // This is similar to accent color in previous versions
    ),
    brightness: Brightness.dark,
    backgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      elevation: 0,
      // brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      bodyText1: TextStyle(fontSize: 16, color: Colors.white),
    ),
  );
  static ThemeData? currentTheme = lightTheme; // Default to light theme

  static void applyLightTheme() {
    currentTheme = lightTheme;
  }

  static void applyDarkTheme() {
    currentTheme = darkTheme;
  }
}