import 'package:flutter/material.dart';

class LightTheme {
  static LightTheme? _instance;
  static LightTheme get instance {
    if (_instance == null) _instance = LightTheme._init();
    return _instance!;
  }

  LightTheme._init();

  ThemeData get theme => ThemeData.light().copyWith(
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
