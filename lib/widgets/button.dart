
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task/widgets/text.dart';

Widget defaultButton({
  FontWeight fontWeight = FontWeight.normal,
  String fontFamily = 'Cairo',
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  Color textColor = Colors.white,
  double fontSize = 18,
  MainAxisAlignment? mainAxisAlignment,
  required VoidCallback function,
  required String text,
}) =>
    Container(

      decoration:  BoxDecoration(
        color: Colors.green,
          // color: background !=Colors.blue ? background: AppColors.buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: TextButton(
        onPressed: function ,
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            defaultText(
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              text: isUpperCase ? text.toUpperCase() : text,
              textColor: textColor,
              fontSize: fontSize,
            ),
          ],
        ),
      ),
    );



Widget defaultTextButton({
  FontWeight fontWeight = FontWeight.normal,
  String fontFamily = 'Cairo-Regular',
  bool isUpperCase = false,
  Color textColor = Colors.black,
  double fontSize = 18,
  required VoidCallback function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: defaultText(
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        text: isUpperCase ? text.toUpperCase() : text,
        textColor: textColor,
        fontSize: fontSize,
      ),
    );



Widget defaultButtonArrow(
    {required BuildContext? context, required String? toWidget,bool
    isMore=false}) =>
    Container(
       margin:  EdgeInsets.all(0.7.h),
       padding:  EdgeInsets.only(left: 0.4.h),

      decoration: const  BoxDecoration(
          // color: AppColors.buttonColor,
          borderRadius:  BorderRadius.all(Radius.circular(30))),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: 25,
          color: Colors.white,
        ),
        onPressed: () {
          // isMore? Navigator.pop(context!): navigateAndReplaceNamed(context!,
          //     toWidget!);

        },
      ),
    );


Widget defaultButtonArrowIn({
  required Color color
}) =>
    Container(
      margin:  EdgeInsets.all(0.7.h),
      padding:  EdgeInsets.only(left: 0.4.h),

      decoration: const BoxDecoration(
          borderRadius:  BorderRadius.all(Radius.circular(30))),
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward,
          size: 25,
          color: color,
        ),
        onPressed: () {
          print('to do somthing ');

        },
      ),
    );


Widget defaultIconButton(
    {
      required Function function,
      required IconData icon,
      Color color = Colors.white,
    }) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon:  Icon(icon,
            size: 30,
            color: color,
          ),
          onPressed:()=> function
        ),
      ],
    );
