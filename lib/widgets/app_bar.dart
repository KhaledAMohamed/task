import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/widgets/text.dart';

import 'button.dart';

AppBar defaultAppBar({
  required String title,
  BuildContext? context,
  String? toWidget,
  bool isLeading = true,
  bool isUpperCase = false,
  double fontSize =20,
  Color textColor= Colors.white,
  bool isAction = true,
  TextAlign textAlign = TextAlign.center ,
  bool isMore = false
}) =>
    AppBar(
      //must be false and leading is null to hide leading back icon
      automaticallyImplyLeading: isLeading,
      backgroundColor: Colors.green,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions:isAction? <Widget>[
        IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
           onPressed: () {
            // do something
          },
        ),
        Image.asset('assets/drawer.png'),
      ]:null,
      title: Center(
        child: Padding(
          padding:  EdgeInsets.only(left: 12),
          child: defaultText(
              text: title,
              textColor: textColor,
              fontSize: fontSize,
              isUpperCase: isUpperCase,
              textAlign: textAlign),
        ),
      ),
      leadingWidth: isLeading?55:0,
      leading: isLeading ? Container(
        //margin: EdgeInsets.only(top: 4,right: 4,left: 4),
       // padding:  EdgeInsets.only(top: 4,right: 4,left: 4),
        child: isMore?defaultButtonArrow(toWidget: toWidget, context:
        context,isMore: true)
            :defaultButtonArrow(toWidget: toWidget, context: context),
      ):null,
    );
