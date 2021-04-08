import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientColors {
  static List<Color> sky = [const Color(0xFF6448FE), const Color(0xFF5FC6FF)];
  static List<Color> sunset = [
    const Color(0xFFFE6197),
    const Color(0xFFFFB463)
  ];
  static List<Color> sea = [const Color(0xFF61A3FE), const Color(0xFF63FFD5)];
  static List<Color> mango = [const Color(0xFFFFA738), const Color(0xFFFFE130)];
  static List<Color> fire = [const Color(0xFFFF5DCD), const Color(0xFFFF8484)];
}

class BacgroundGradient {
  static LinearGradient getBacground(BuildContext context) {
    return LinearGradient(
      // Where the linear gradient begins and ends
      begin: Alignment.topRight,
      end: Alignment.bottomCenter,
      // Add one stop for each color. Stops should increase from 0 to 1
      stops: const <double>[0, 0.2, 0.5, 0.6, 1],
      colors: <Color>[
        Theme.of(context).primaryColor,
        Theme.of(context).accentColor,
        Theme.of(context).primaryColor.withOpacity(0.9),
        Theme.of(context).accentColor.withOpacity(0.9),
        Theme.of(context).primaryColor
      ],
    );
  }
}
