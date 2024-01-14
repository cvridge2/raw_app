import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  CustomAppBar(
      {
        super.key,
        required this.height,
        this.styleType,
        this.leadingWidth,
        this.leading,
        this.title,
        this.centerTitle,
        this.actions,
        this.imagePath,
        this.svgPath,
        this.options,
      });

  String? svgPath;
  String? imagePath;
  double height;
  Style? styleType;
  double? leadingWidth;
  Widget? leading;
  Widget? title;
  Widget? options;
  bool? centerTitle;
  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 20,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      //backgroundColor: Colors.purple[100], // color
      //backgroundColor: ColorConstant.appBarColor,
      backgroundColor: Colors.deepPurple[700],
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    size.width,
    height,
  );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillGray50:
        return Container(
          height: getVerticalSize(
            60,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray50,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillGray50,
}