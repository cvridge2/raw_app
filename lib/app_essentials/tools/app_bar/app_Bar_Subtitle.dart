import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';

class AppbarSubtitle extends StatelessWidget {

  AppbarSubtitle(
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
          style: AppStyle.txtManropeExtra2Bold20WhiteA700.copyWith(
            letterSpacing: getHorizontalSize(
              0.2,
            ),
            color: ColorConstant.whiteA700,
            //color: Colors.white,
          ),
        ),
      ),
    );
  }
}