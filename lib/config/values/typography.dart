import 'package:merchan/config/config.dart';
import 'package:flutter/material.dart';

TextStyle titleStyle(
    {double size = 20, FontWeight weight = FontWeight.w900, Color? textColor}) {
  return TextStyle(
      color: textColor ?? qWhite, fontSize: size, fontWeight: weight);
}

TextStyle bodyStyle(
    {FontWeight weight = FontWeight.w400, Color? textColor, double? size}) {
  return TextStyle(
    color: textColor ?? qWhite,
    fontWeight: weight,
    fontSize: size,
  );
}

TextStyle smallStyle(
    {Color textColor = qWhite,
    double size = 12,
    FontWeight weight = FontWeight.w400}) {
  return TextStyle(
    color: textColor,
    fontSize: size,
    fontWeight: weight,
  );
}
