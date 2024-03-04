
import 'package:flutter/material.dart';

import '../font_manager.dart';

TextStyle _textStyleManagerInter(double fontSize, FontWeight fontWeight,
    Color color, double height, TextDecoration textDecoration) {
  return TextStyle(
      fontFamily: FontFamily.inter,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      decoration: textDecoration);
}

// regular text
TextStyle getRegularTextStyleInter(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerInter(
      fontSize, FontWeightManager.regular, color, height, textDecoration);
}

// bold text
TextStyle getBoldStyleInter(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerInter(
      fontSize, FontWeightManager.bold, color, height, textDecoration);
}

// medium text
TextStyle getMediumStyleInter(
    {double fontSize = FontSize.s12,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerInter(
      fontSize, FontWeightManager.medium, color, height, textDecoration);
}

TextStyle getSemiBoldStyleInter(
    {double fontSize = FontSize.s13,
    required Color color,
    double height = 1,
    TextDecoration textDecoration = TextDecoration.none}) {
  return _textStyleManagerInter(
      fontSize, FontWeightManager.semiBold, color, height, textDecoration);
}
