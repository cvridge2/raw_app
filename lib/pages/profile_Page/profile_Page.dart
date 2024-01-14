import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //child: Padding(
        //padding: getPadding(top:20),

          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(70),
                  leadingWidth: 64,
                  // leading: AppBarLogo(
                  //     height: 100,
                  //     width: 100,
                  //     svgPath: ImageConstant.imgArrowleft,
                  //     margin: getPadding(
                  //       left: 25,
                  //     ),
                  //     onTap: () {
                  //       onTapArrowleft15(context);
                  //     }),
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
                  //centerTitle: true,
                  //title: AppbarSubtitle(text: "Profile")
                actions: [
                AppBarLogo(
                height: 30,
                width: 30,
                margin: getPadding(
                  right: 25,
                ),

                svgPath: ImageConstant.imgOptionIcon,
              )]
              ),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(
                      left: 24,
                      top: 32,
                      right: 24,
                      bottom: 32
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: getSize(70),
                            width: getSize(70),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle36170x70,
                                      height: getSize(70),
                                      width: getSize(70),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(35)
                                      ),
                                      alignment: Alignment.center
                                  ),
                                  CustomIconButton(
                                      height: 24,
                                      width: 24,
                                      variant: IconButtonVariant.OutlineBluegray50_2,
                                      shape: IconButtonShape.RoundedBorder10,
                                      padding: IconButtonPadding.PaddingAll5,
                                      alignment: Alignment.bottomRight,
                                      onTap: () {
                                        onTapBtnEdit(context);
                                      },
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgEdit12x12
                                      )
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 8),
                            child: Text(
                                "Juan Dela Cruz",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeBold18.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)
                                )
                            )
                        ),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Text(
                                "hello@gmail.com",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeMedium14Bluegray500
                            )
                        ),

                        // favorites
                        GestureDetector(
                            onTap: () {
                              onTapFavorite(context);
                            },

                            child: Padding(
                                padding: getPadding(top: 16),

                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          variant: IconButtonVariant.FillBluegray50,
                                          shape: IconButtonShape.RoundedBorder10,
                                          padding: IconButtonPadding.PaddingAll12,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgLocation40x40
                                          )


                                      ),

                                      Padding(
                                          padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              bottom: 7
                                          ),
                                          child: Text(
                                              "My favorites",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtManropeSemiBold14Gray900
                                          )
                                      ),

                                      const Spacer(),

                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowrightBlueGray500,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              top: 10,
                                              bottom: 10
                                          )
                                      ),

                                    ]
                                )
                            )
                        ),

                        // edit profile
                        GestureDetector(
                            onTap: () {
                              onTapEditProfile(context);
                            },

                            child: Padding(
                                padding: getPadding(top: 16),

                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          variant: IconButtonVariant.FillBluegray50,
                                          shape: IconButtonShape.RoundedBorder10,
                                          padding: IconButtonPadding.PaddingAll12,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgHome44x44
                                          )
                                      ),

                                      Padding(
                                          padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              bottom: 7
                                          ),
                                          child: Text(
                                              "Edit Profile ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtManropeSemiBold14Gray900
                                          )
                                      ),

                                      const Spacer(),

                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowrightBlueGray500,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              top: 10,
                                              bottom: 10
                                          )
                                      ),

                                    ]
                                )
                            )
                        ),

                        // settings
                        GestureDetector(
                            onTap: () {
                              onTapSettings(context);
                            },

                            child: Padding(
                                padding: getPadding(
                                  top: 16,
                                  bottom: 5,
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          variant: IconButtonVariant.FillBluegray50,
                                          shape: IconButtonShape.RoundedBorder10,
                                          padding: IconButtonPadding.PaddingAll12,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgSettings1
                                          )
                                      ),

                                      Padding(
                                          padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              bottom: 7
                                          ),
                                          child: Text(
                                              "Settings",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtManropeSemiBold14Gray900
                                          )
                                      ),

                                      const Spacer(),

                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowrightBlueGray500,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              top: 10,
                                              bottom: 10
                                          )
                                      ),

                                    ]
                                )
                            )
                        ),
                      ]
                  )
              )
          )
      //),
    );
  }

  onTapBtnEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapRowinstagram(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapFavorite(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.favorite_Page);
  }

  onTapPasttour(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapEditProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.edit_Profile_Page);
  }

  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.settings_Page);
  }

  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }

  onTapLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.home_Page);
  }
}
