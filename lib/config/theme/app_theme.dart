import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.black,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'selected color must be less or equal than 0 ${colorList.length - 1}');
  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
      );
}
