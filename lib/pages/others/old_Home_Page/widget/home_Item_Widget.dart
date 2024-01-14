import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/theme/app_Decoration.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';

class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
      {super.key, 
        this.onTapImgImg,
      });

  VoidCallback? onTapImgImg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(418),
      width: getHorizontalSize(327),

      child: Stack(
        alignment: Alignment.center,
        children: [

          CustomImageView(
            //imagePath: ImageConstant.img_trial_thermody,
            imagePath: ImageConstant.imgImg418x3271,
            height: getVerticalSize(418),
            width: getHorizontalSize(327),
            alignment: Alignment.center,
            radius: BorderRadius.circular(
              getHorizontalSize(10),
            ),

            onTap: () {
              onTapImgImg?.call();
            },
          ),

          Align(
            alignment: Alignment.center,

            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  CustomIconButton(
                    height: 36,
                    width: 36,
                    //variant: IconButtonVariant.OutlineBluegray50_1,

                    child: CustomImageView(
                      svgPath: ImageConstant.imgClock,
                    ),
                  ),

                  Container(
                    margin: getMargin(top: 268),
                    padding: getPadding(
                      top: 14,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Padding(
                          padding: getPadding(top: 1),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Text(
                                "Golden Meadows",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeExtraBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2),
                                )
                              ),

                              Padding(
                                padding: getPadding(top: 8),

                                child: Row(
                                  children: [

                                    CustomImageView(
                                      svgPath: ImageConstant.imgLocation,
                                      height: getSize(14),
                                      width: getSize(14),
                                      margin: getMargin(bottom: 2),
                                    ),

                                    Padding(
                                      padding: getPadding(left: 4),

                                      child: Text(
                                        "St. Celina, Delaware 10299",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManrope12.copyWith(
                                          letterSpacing: getHorizontalSize(0.4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: getPadding(top: 1),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Text(
                                "500",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeExtraBold18Blue500.copyWith(
                                  letterSpacing: getHorizontalSize(0.2),
                                ),
                              ),

                              Padding(
                                padding: getPadding(top: 9),

                                child: Text(
                                  "per month",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManrope12.copyWith(
                                    letterSpacing: getHorizontalSize(0.4),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
