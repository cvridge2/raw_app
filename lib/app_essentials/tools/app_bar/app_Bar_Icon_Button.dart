import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';


class AppBarIconButton extends StatelessWidget {

  AppBarIconButton(
      {
        super.key,
        this.imagePath,
        this.svgPath,
        this.margin,
        this.onTap,
      });

  String? imagePath;
  String? svgPath;
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

        child: CustomIconButton(
          height: 40,
          width: 40,
          svgPath: svgPath,

          variant: IconButtonVariant.OutlineBluegray50,

          // this makes the circle on the icon
          // child: CustomImageView(
          //    svgPath: svgPath,
          //    imagePath: imagePath,
          //  ),

        ),

      ),

    );

  }
}
