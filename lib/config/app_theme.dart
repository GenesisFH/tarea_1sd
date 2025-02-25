import 'package:flutter/material.dart';

class AppTheme {
  final int _indexColor;
  AppTheme(this._indexColor): assert(_indexColor >= 0 && _indexColor < colors.length);

  static List<Color> colors = [
    const Color(0xFF00FF00),
    const Color(0xFF0000FF),
    const Color(0xFFFF0000),
  ];
  ThemeData getTheme () => ThemeData(
    colorSchemeSeed: colors[_indexColor],
    brightness: Brightness.dark
  );
}