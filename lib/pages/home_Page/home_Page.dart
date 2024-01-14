// fixing
import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Icon_Button.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Image.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Image.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //child: Padding(
        //padding: getPadding(top:1),

        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
              height: getVerticalSize(70),
              leadingWidth: 64,
              //centerTitle: true,
              title: AppBarLogo(
                height: 100,
                width: 100,
                margin: getPadding(
                  left: 25,
                ),
                imagePath: ImageConstant.imgAppBarLogo,

                onTap: () {
                  onTapLogo(context);
                },
              ),

                // options: AppBarLogo(
                //   height: 20,
                //   width: 20,
                //   margin: getPadding(
                //     left: 50,
                //   ),
                //   svgPath: ImageConstant.imgOptionIcon,
                // ),

                actions: [
                  AppBarLogo(
                    height: 30,
                    width: 30,
                    margin: getPadding(
                      right: 25,
                    ),

                    svgPath: ImageConstant.imgOptionIcon,
                  )

                //   AppBarIconButton(
                //     svgPath: ImageConstant.imgOptionIcon,
                //     margin: getMargin(
                //       left: 24,
                //       //top: 10,
                //       right: 24,
                //     ),
                //
                //     onTap: (){
                //       onTapOptions(context);
                //     },
                //   ),
                ],
            ),

            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(
                          left: 24,
                            //top: 32,
                          top: 5,
                          right: 24,
                          bottom: 35,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(180),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(top: 24),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          onTap: () {
                                            onTapTopic1(context);
                                          },

                                          //imagePath: ImageConstant.imgImg418x3271,
                                          //imagePath: ImageConstant.imgOptics420,
                                          imagePath: ImageConstant.imgOptics420,
                                          height: getVerticalSize(180),
                                          width: getHorizontalSize(327),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(10),
                                          ),
                                          alignment: Alignment.center,
                                        ),

                                        CustomIconButton(
                                            height: 36,
                                            width: 36,
                                            margin: getMargin(
                                                top: 16,
                                                right: 16
                                            ),
                                            variant: IconButtonVariant.OutlineBluegray50_1,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgClock
                                            )
                                        )
                                      ]
                                  )
                              ),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  onTapTopic1(context);
                                                },

                                                child: Text(
                                                  "Topic 1",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManropeExtraBold18.copyWith(
                                                      letterSpacing: getHorizontalSize(0.2)
                                                  ),
                                                ),


                                              ),
                                            ]
                                        ),
                                      ]
                                  )
                              ),

                              Container(
                                  height: getVerticalSize(180),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(top: 22),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          onTap: () {
                                            onTapTopic2(context);
                                          },

                                          //imagePath: ImageConstant.imgImg180x3271,
                                          //imagePath: ImageConstant.imgOptics,
                                          imagePath: ImageConstant.imgOptics420,
                                          height: getVerticalSize(180),
                                          width: getHorizontalSize(327),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(10)
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomIconButton(
                                            height: 36,
                                            width: 36,
                                            margin: getMargin(
                                                top: 16,
                                                right: 16
                                            ),
                                            variant: IconButtonVariant.OutlineBluegray50_1,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgClock
                                            )
                                        )
                                      ]
                                  )
                              ),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  onTapTopic2(context);
                                                },

                                                child: Text(
                                                  "Topic 2",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManropeExtraBold18.copyWith(
                                                    letterSpacing: getHorizontalSize(0.2),
                                                  ),
                                                ),

                                              ),
                                            ]
                                        ),
                                      ]
                                  )
                              ),

                              Container(
                                  height: getVerticalSize(180),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(top: 22),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            onTap: () {
                                              onTapTopic3(context);
                                            },

                                            //imagePath: ImageConstant.imgImg180x3272,
                                            //imagePath: ImageConstant.imgOptics,
                                            imagePath: ImageConstant.imgOptics420,
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(327),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10)
                                            ),
                                            alignment: Alignment.center
                                        ),
                                        CustomIconButton(
                                            height: 36,
                                            width: 36,
                                            margin: getMargin(
                                                top: 16,
                                                right: 16
                                            ),
                                            variant: IconButtonVariant.OutlineBluegray50_1,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgClock
                                            )
                                        )
                                      ]
                                  ),
                              ),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  onTapTopic3(context);
                                                },

                                                child: Text(
                                                      "Topic 3",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtManropeExtraBold18.copyWith(
                                                          letterSpacing: getHorizontalSize(0.2)
                                                      )
                                                  ),
                                              ),
                                            ]
                                        ),
                                      ],
                                  ),
                              ),
                            ]

                        )
                    )
                )
            ),
        )
      //),
    );
  }

  onTapArrowleft20(BuildContext context) {
    Navigator.pop(context);
  }

  onTapProperty(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapOptions(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapTopic1(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_1);
  }

  onTapTopic2(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_2);
  }

  onTapTopic3(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_3);
  }

  onTapLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.home_Page);
  }
}
