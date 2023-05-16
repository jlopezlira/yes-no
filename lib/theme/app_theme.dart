import 'package:flutter/material.dart';

const List<Color> _colorThemes = <Color>[
  Colors.green,
  Colors.blue,
  Colors.purple,
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.teal,
  Colors.pink,
  Colors.cyan,
  Colors.indigo,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 9,
  }): assert(selectedColor >= 0 && selectedColor < _colorThemes.length, 'selectedColor must be between 0 and ${_colorThemes.length - 1}');


  ThemeData theme() {
    return ThemeData(
      useMaterial3:  true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
