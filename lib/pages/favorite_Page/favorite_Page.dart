import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});


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
                        onTapArrowleft21(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(
                      text: "Favorites"
                  )

              ),
              body: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: getPadding(
                              left: 24,
                              //top: 32,
                              right: 24,
                              bottom: 5
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
                                              //imagePath: ImageConstant.imgImg418x3271,
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
                                                  svgPath: ImageConstant.imgFavorite20x20
                                              )
                                          )
                                        ]
                                    )
                                ),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "Favorite 1",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtManropeExtraBold18.copyWith(
                                                        letterSpacing: getHorizontalSize(0.2)
                                                    )
                                                ),
                                              ]
                                          ),
                                        ]
                                    )
                                ),

                                Container(
                                    height: getVerticalSize(180),
                                    width: getHorizontalSize(327),
                                    margin: getMargin(top: 24),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              //imagePath: ImageConstant.imgImg418x3271,
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
                                                  svgPath: ImageConstant.imgFavorite20x20
                                              )
                                          )
                                        ]
                                    )
                                ),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "Favorite 2",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtManropeExtraBold18.copyWith(
                                                        letterSpacing: getHorizontalSize(0.2)
                                                    )
                                                ),
                                              ]
                                          ),
                                        ]
                                    )
                                ),

                                Container(
                                    height: getVerticalSize(180),
                                    width: getHorizontalSize(327),
                                    margin: getMargin(top: 24),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              //imagePath: ImageConstant.imgImg418x3271,
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
                                                  svgPath: ImageConstant.imgFavorite20x20
                                              )
                                          )
                                        ]
                                    )
                                ),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "Favorite 3",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtManropeExtraBold18.copyWith(
                                                        letterSpacing: getHorizontalSize(0.2)
                                                    )
                                                ),
                                              ]
                                          ),
                                        ]
                                    )
                                ),

                                Padding(
                                    padding: getPadding(top:10)
                                ),
                              ]
                          )
                      )
                  )
              ),
          ),
      //),
    );
  }
  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }
}
