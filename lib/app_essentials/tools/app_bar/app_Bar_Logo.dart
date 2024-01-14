//import 'package:christian_vridge_s_application/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';

// ignore: must_be_immutable
class AppBarLogo extends StatelessWidget {

  AppBarLogo(
      {
        super.key,
        required this.height,
        required this.width,
        this.imagePath,
        this.svgPath,
        this.margin,
        this.onTap,
      });

  double height;
  double width;
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

        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: height,
          width: width,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
