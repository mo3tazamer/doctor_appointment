
import 'package:flutter/material.dart';

import '../font_manager.dart';

TextStyle _textStyleManagerPoppins(double fontSize, FontWeight fontWeight,
    Color color, double height, TextDecoration textDecoration) {
  return TextStyle(
      fontFamily: FontFamily.poppins,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      decoration: textDecoration);
}

// regular text
TextStyle regularTextStylePoppins(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerPoppins(
      fontSize, FontWeightManager.regular, color, height, textDecoration);
}

// bold text
TextStyle getBoldStylePoppins(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerPoppins(
      fontSize, FontWeightManager.bold, color, height, textDecoration);
}

// medium text
TextStyle getMediumStylePoppins(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerPoppins(
      fontSize, FontWeightManager.medium, color, height, textDecoration);
}

TextStyle getSemiBoldStylePoppins(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerPoppins(
      fontSize, FontWeightManager.semiBold, color, height, textDecoration);
}
