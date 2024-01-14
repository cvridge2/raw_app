import 'package:flutter/material.dart';

Size size = WidgetsBinding.instance.window.physicalSize /
    WidgetsBinding.instance.window.devicePixelRatio;

const num design_width = 375;
const num design_height = 812;
const num design_status_bar = 44;

get width {
  return size.width;
}

get height {
  num statusBar =
      MediaQueryData.fromView(WidgetsBinding.instance.window).viewPadding.top;
  num bottomBar = MediaQueryData.fromView(WidgetsBinding.instance.window)
      .viewPadding
      .bottom;
  num screenHeight = size.height - statusBar - bottomBar;
  return screenHeight;
}

double getHorizontalSize(double px) {
  return (px * width) / design_width;
}

double getVerticalSize(double px) {
  return (px * height) / (design_height - design_status_bar);
}

double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  return (height < width) ? height.toInt().toDouble() : width.toInt().toDouble();
}

double getFontSize(double px) {
  return getSize(px);
}

EdgeInsetsGeometry getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(left ?? 0),
    top: getVerticalSize(top ?? 0),
    right: getHorizontalSize(right ?? 0),
    bottom: getVerticalSize(bottom ?? 0),
  );
}

EdgeInsetsGeometry getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}