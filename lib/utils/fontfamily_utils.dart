// FONT FAMILY
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'colors_utils.dart';


const String poppinsFamily = "Poppins";


//FONT WEIGHT

class FontWeightClass {
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiB = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const extraB = FontWeight.w800;
  static const black = FontWeight.w900;
}

class FontTextStyle {
  // Title
  static TextStyle poppinsS16W7WhiteColor = TextStyle(
      fontFamily: poppinsFamily,
      fontSize: 16.sp,
      color: ColorUtils.whiteColor,
      fontWeight: FontWeightClass.bold);

  static TextStyle poppinsS14HintColor = TextStyle(
      fontFamily: poppinsFamily,
      fontSize: 14.sp,
      color: ColorUtils.labelColor,
      fontWeight: FontWeightClass.regular);

  static TextStyle poppinsS10HintColor = TextStyle(
      fontFamily: poppinsFamily,
      fontSize: 10.sp,
      color: ColorUtils.labelColor,
      fontWeight: FontWeightClass.regular);

  static TextStyle poppinsS14W4BlackColor =
  poppinsS14HintColor.copyWith(color:ColorUtils.blackColor);

  static TextStyle poppinsS14W4WhiteColor =
  poppinsS14HintColor.copyWith(color:ColorUtils.whiteColor);
}