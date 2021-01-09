import 'package:flutter/material.dart';

class CustomTextStyles {
  static customText({bool isBold, double size, Color color, String family}) {
    if (isBold == null) {
      isBold = false;
    }
    return TextStyle(
        fontSize: size ?? 35,
        color: color ?? Colors.black,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        fontFamily: family);
  }
}

class FontSizes {
  static double heading = 40;
  static double subHeading = 23;
  static double small = 12;
  static double medium = 16;
  static double large = 25;
}
