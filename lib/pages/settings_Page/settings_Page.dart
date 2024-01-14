import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/tools/custom_switch.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';

class SettingsPage extends StatelessWidget {

  bool isSelectedSwitch = true;
  bool isSelectedSwitch1 = false;

  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //child: Padding(
        //padding: getPadding(top: 20),

        child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(70),
                  leadingWidth: 64,
                  leading: AppBarLogo(
                      height: 100,
                      width: 100,
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getPadding(
                        left: 25,
                      ),
                      onTap: () {
                        onTapArrowleft16(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "Settings")
              ),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(
                      left: 24,
                      top: 34,
                      right: 24,
                      bottom: 34
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Application Settings",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeExtraBold14Bluegray500.copyWith(
                                letterSpacing: getHorizontalSize(0.2)
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 14),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          top: 2,
                                          bottom: 1
                                      ),
                                      child: Text(
                                          "Notification",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeSemiBold14Gray900
                                      )
                                  ),
                                  CustomSwitch(
                                      value: isSelectedSwitch,
                                      onChanged: (value) {
                                        isSelectedSwitch = value;
                                      }
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray300
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          top: 2,
                                          bottom: 1
                                      ),
                                      child: Text(
                                          "Dark Mode",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeSemiBold14Gray900
                                      )
                                  ),
                                  CustomSwitch(
                                    value: isSelectedSwitch1,
                                    onChanged: (value) {
                                      isSelectedSwitch1 = value;
                                    },
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray300
                            )
                        ),

                        Padding(
                            padding: getPadding(top: 33),
                            child: Text(
                                "Support",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeExtraBold14Bluegray500.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)
                                )
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 14),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "Terms of use",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeSemiBold14Gray900
                                  ),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright20x20,
                                      height: getSize(20),
                                      width: getSize(20)
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray300
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text(
                                          "Privacy Policy",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeSemiBold14Gray900
                                      )
                                  ),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright20x20,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(bottom: 2)
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 14),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray300
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text(
                                          "About",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeSemiBold14Gray900
                                      )
                                  ),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowright20x20,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(bottom: 1)
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray300
                            )
                        ),
                        GestureDetector(
                            onTap: () {
                              onTapFaqs(context);
                            },
                            child: Padding(
                                padding: getPadding(
                                    top: 15,
                                    bottom: 5
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "FAQs",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeSemiBold14Gray900
                                      ),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright20x20,
                                          height: getSize(20),
                                          width: getSize(20)
                                      )
                                    ]
                                )
                            )
                        )
                      ]
                  )
              )
          ),
      //),
    );
  }

  onTapFaqs(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapArrowleft16(BuildContext context) {
    Navigator.pop(context);
  }
}
