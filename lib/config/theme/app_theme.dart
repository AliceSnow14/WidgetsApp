import 'package:flutter/material.dart';

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0, "selected color must be greater than 0");

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: true),
      );
}

const List<Color> colorList = [
  Colors.deepPurple,
  Colors.indigoAccent,
  Colors.cyan,
  Colors.orange,
  Colors.greenAccent,
  Colors.pinkAccent,
];
