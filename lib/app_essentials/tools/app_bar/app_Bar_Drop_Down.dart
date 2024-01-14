import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/custom_Drop_Down.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';

class AppBarDropDown extends StatelessWidget {

  AppBarDropDown(
      {super.key, 
        required this.hintText,
        required this.items,
        required this.onTap,
        this.margin
      });

  String? hintText;
  List<String> items;
  Function(String) onTap;
  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: getHorizontalSize(149),
        focusNode: FocusNode(),
        icon: Container(
          margin: getMargin(left: 4),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdown,
          ),
        ),

        hintText: "St. Celina, Delaware",
        variant: DropDownVariant.None,
        fontStyle: DropDownFontStyle.ManropeSemiBold14Gray900,
        items: items,

        onChanged: (value) {
          onTap(value);
        },
      ),
    );
  }
}
