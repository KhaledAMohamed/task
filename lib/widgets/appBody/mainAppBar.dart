import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/button.dart';
import '../../widgets/text.dart';

Widget defaultAppBody(
    {required BuildContext context,
    required Widget child,
    required String text,
    double? imageHeight,
    double? bodyTopMargin,
    PreferredSizeWidget? bottom,
    // Drawer? drawer,
    bool isLeading = true,
    bool isDrawer = false,
    bool arrowBackGoToHome = true}) {
  return Stack(
    children: [
      Container(
          height: imageHeight ?? 30.h,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage('assets/appbar.png'),
                fit: BoxFit.cover),
          )),

      SizedBox(
        height: 18.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(width: 1.5.h,),
           Image.asset('assets/logoname.png'),
            Spacer(),
            Row(
              children: [
                Icon(Icons.notifications_none,color: Colors.white,),
                SizedBox(width: 1.5.h,),
                Image.asset('assets/drawer.png'),
              ],
            ),
            SizedBox(width: 1.5.h,),

          ],
        ),
      ),
    ],
  );
}







