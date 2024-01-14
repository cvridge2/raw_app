import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';

class AppDecoration {

  static BoxDecoration get textOutlineBlack9003f => const BoxDecoration();

  static BoxDecoration get outlineGray3001 => BoxDecoration(
    color: ColorConstant.gray5002,
    border: Border.all(
      color: ColorConstant.gray300,
      width: getHorizontalSize(
        1,
      ),
    ),
  );

  static BoxDecoration get fillGray50 => BoxDecoration(
    color: ColorConstant.gray50,
  );

  static BoxDecoration get outlineBluegray1000f => BoxDecoration(
    color: ColorConstant.whiteA700,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.blueGray1000f,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: const Offset(
          0,
          -8,
        ),
      ),
    ],
  );

}

class BorderRadiusStyle {

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );
}