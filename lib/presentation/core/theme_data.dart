import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///List of all the GradientColors to iterate on
final List<List<Color>> gradientColorsList = [
  GradientColors.sky,
  GradientColors.sunset,
  GradientColors.sea,
  GradientColors.mango,
  GradientColors.fire
];

class GradientColors {
  static List<Color> sky = [
    const Color(0xFF6448FE).withOpacity(0.9),
    const Color(0xFF5FC6FF).withOpacity(0.9),
  ];
  static List<Color> sunset = [
    const Color(0xFFFE6197).withOpacity(0.9),
    const Color(0xFFFFB463).withOpacity(0.9),
  ];
  static List<Color> sea = [
    const Color(0xFF61A3FE).withOpacity(0.9),
    const Color(0xFF63FFD5).withOpacity(0.9),
  ];
  static List<Color> mango = [
    const Color(0xFFFFA738).withOpacity(0.9),
    const Color(0xFFFFE130).withOpacity(0.9),
  ];
  static List<Color> fire = [
    const Color(0xFFFF5DCD).withOpacity(0.9),
    const Color(0xFFFF8484).withOpacity(0.9),
  ];
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
        Colors.deepPurple,
        Theme.of(context).accentColor,
        Colors.deepPurple.withOpacity(0.9),
        Theme.of(context).accentColor.withOpacity(0.9),
        Colors.deepPurple
      ],
    );
  }
}
