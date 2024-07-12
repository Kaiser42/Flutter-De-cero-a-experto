import 'package:flutter/material.dart';

const Color _customColor = Colors.blueAccent;
const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.pink,
  Colors.orange,
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 167, 125, 7),
];

class ThemeConfig {
  final int selectedColor;

  ThemeConfig({this.selectedColor = 0}):assert (selectedColor >= 0, 'Tiene que ser superior a 0'), assert (selectedColor <= _colorThemes.length -1, 'Tiene que ser inferior a $_colorThemes.length-1');

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorThemes[3]);
  }
}
