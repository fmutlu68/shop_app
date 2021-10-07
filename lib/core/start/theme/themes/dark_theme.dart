import 'package:flutter/material.dart';

class DarkTheme {
  static DarkTheme? _instance;
  static DarkTheme get instance {
    if (_instance == null) _instance = DarkTheme._init();
    return _instance!;
  }

  DarkTheme._init();

  ThemeData get theme => ThemeData.dark().copyWith(
        textTheme: textTheme,
        colorScheme: colorScheme,
        inputDecorationTheme: inputDecoration,
      );

  TextTheme get textTheme {
    return ThemeData.dark().textTheme.copyWith();
  }

  ColorScheme get colorScheme => ColorScheme.dark().copyWith();

  InputDecorationTheme get inputDecoration =>
      ThemeData.dark().inputDecorationTheme.copyWith();
}
