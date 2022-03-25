import 'package:flutter/material.dart';

//for StartedScreen
Widget defaultText({
  FontWeight fontWeight = FontWeight.normal,
  String fontFamily = 'Cairo-Regular',
  Color textColor = Colors.white,
  double fontSize = 12,

  bool isUpperCase = false,
  TextAlign? textAlign,
  required String text,
  bool underLine = false
}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      textAlign: textAlign,

      style: TextStyle(
        decoration: underLine? TextDecoration.underline:null,
        decorationColor:underLine? Colors.black:null,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: textColor,
      ),
    );
