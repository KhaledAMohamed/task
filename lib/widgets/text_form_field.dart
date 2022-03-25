
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextFormField(
    {
      TextEditingController? controller,
      required TextInputType type,
      String? label,
      bool isPassword = false,
      bool isBorder = false,
      Color? labelColor,
      IconData? suffix,
      Function? suffixPressed,
      bool autofocus = false,
      bool? enabled,
      TextStyle? labelStyle,
      TextAlign textAlign = TextAlign.start,
      FocusNode? focusNode,
      Function? onChanged}) {
  return TextFormField(
      autocorrect: false,
      cursorColor: Colors.black,
      cursorHeight: 5,
      autofocus: autofocus,
      enabled: enabled,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      textAlign: textAlign,
      focusNode: focusNode,
      onChanged: (String value) => onChanged,
      textInputAction: TextInputAction.done,
      style: const TextStyle(
        color: Colors.black,
        decoration: TextDecoration.none,
        decorationThickness: 0.0,
        decorationColor: Colors.white,
      ),
      // decoration: InputDecoration(
      //   enabledBorder: isBorder
      //       ? OutlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.borderColor))
      //       : UnderlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.underBorderColor)),
      //   focusedBorder: isBorder
      //       ? OutlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.borderColor))
      //       : UnderlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.underBorderColor)),
      //   border: isBorder
      //       ? OutlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.borderColor))
      //       : UnderlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.underBorderColor)),
      //   floatingLabelBehavior: FloatingLabelBehavior.auto,
      //   labelText: label,
      //   labelStyle: TextStyle(
      //     color: labelColor ?? AppColors.defaultColor,
      //     decoration: TextDecoration.none,
      //   ),
      //   suffixIcon: suffix == null
      //       ? null
      //       : IconButton(
      //     icon: Icon(suffix),
      //     onPressed:()=> suffixPressed!(),
      //     color: Colors.black,
      //   ),
      // )
  );
}


Widget defaultTextFormFieldOTP({
  required TextEditingController controller,
  bool autofocus = false,
}) {
  return Container(
    width: 50,
    height: 60,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
    ),
    child: TextField(
      controller: controller,
      showCursor: true,
      // cursorColor: AppColors.cursorColor,
      textInputAction: TextInputAction.next,
      maxLines: 1,
      maxLength: 1,
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: Colors.black,
        decoration: TextDecoration.none,
        decorationThickness: 0.0,
        decorationColor: Colors.white,
      ),
      textAlign: TextAlign.center,
      // decoration: InputDecoration(
      //   counterText: '',
      //   enabledBorder: UnderlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.underBorderColor)),
      //   focusedBorder: UnderlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.underBorderColor)),
      //   border: UnderlineInputBorder(
      //       borderSide: BorderSide(color: AppColors.underBorderColor)),
      // ),
    ),
  );
}