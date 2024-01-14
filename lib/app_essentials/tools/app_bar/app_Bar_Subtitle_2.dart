//import 'package:christian_vridge_s_application/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';

class AppBarSubtitle2 extends StatelessWidget {

  AppBarSubtitle2(
      {super.key, 
        required this.text,
        this.margin,
        this.onTap,
      });

  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        onTap?.call();
      },

      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtManropeMedium10.copyWith(
            letterSpacing: getHorizontalSize(0.4),
            color: ColorConstant.blueGray500,
          ),
        ),
      ),
    );
  }
}
