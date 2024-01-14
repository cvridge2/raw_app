  //import 'package:christian_vridge_s_application/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';

class CustomDropDown extends StatelessWidget {

  CustomDropDown(
      {super.key, 
        this.shape,
        this.padding,
        this.variant,
        this.fontStyle,
        this.alignment,
        this.width,
        this.margin,
        this.focusNode,
        this.icon,
        this.hintText,
        this.prefix,
        this.prefixConstraints,
        this.items,
        this.onChanged,
        this.validator,
      });

  DropDownShape? shape;
  DropDownPadding? padding;
  DropDownVariant? variant;
  DropDownFontStyle? fontStyle;
  Alignment? alignment;
  double? width;
  EdgeInsetsGeometry? margin;
  FocusNode? focusNode;
  Widget? icon;
  String? hintText;
  Widget? prefix;
  BoxConstraints? prefixConstraints;
  List<String>? items;
  Function(String)? onChanged;
  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null ? Align(
      alignment: alignment ?? Alignment.center,
      child: _buildDropDownWidget(),
    )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,

      child: DropdownButtonFormField(
        focusNode: focusNode,
        icon: icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),

        onChanged: (value) {
          onChanged!(value.toString());
        },

        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.ManropeSemiBold14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(14),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(1.43),
        );

      case DropDownFontStyle.ManropeMedium14Bluegray500:
        return TextStyle(
          color: ColorConstant.blueGray500,
          fontSize: getFontSize(14),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(1.43),
        );

      default:
        return TextStyle(
          color: ColorConstant.blueGray500,
          fontSize: getFontSize(14),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(1.43),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(10.00),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.FillBluegray50:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );

      case DropDownVariant.None:
        return InputBorder.none;

      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray400,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case DropDownVariant.FillBluegray50:
        return ColorConstant.blueGray50;

      default:
        return ColorConstant.gray50;
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.FillBluegray50:
        return true;

      case DropDownVariant.None:
        return false;

      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          left: 12,
          top: 12,
          bottom: 12,
        );
    }
  }
}

enum DropDownShape {
  RoundedBorder10,
}

enum DropDownPadding {
  PaddingT11,
}

enum DropDownVariant {
  None,
  OutlineBluegray400,
  FillBluegray50,
}

enum DropDownFontStyle {
  ManropeRegular14Bluegray500,
  ManropeSemiBold14Gray900,
  ManropeMedium14Bluegray500,
}