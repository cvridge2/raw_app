// import 'package:flutter/material.dart';
// import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
// import 'package:trial_v3/app_essentials/tools/custom_Button.dart';
// import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
// import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
// import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
// import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Icon_Button_1.dart';
// import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
// import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
// import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
// import 'package:trial_v3/app_essentials/theme/app_Style.dart';
//
//
//
//
// class FavoriteScreen extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//   return SafeArea(
//       child: Scaffold(
//           backgroundColor: ColorConstant.gray50,
//           appBar: CustomAppBar(
//               height: getVerticalSize(40),
//               leadingWidth: 64,
//               leading: AppBarIconButton1(
//                   svgPath: ImageConstant.imgArrowleft,
//                   margin: getMargin(left: 24),
//                   onTap: () {
//                    onTapArrowleft21(context);
//                   }),
//               centerTitle: true,
//               title: AppbarSubtitle(
//                   text: "Favorites"
//               )
//           ),
//           body: SizedBox(
//               width: size.width,
//               child: SingleChildScrollView(
//                   child: Padding(
//                       padding: getPadding(
//                           left: 24,
//                           top: 32,
//                           right: 24,
//                           bottom: 5
//                       ),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                            Row(
//                                mainAxisAlignment: MainAxisAlignment.center,
//                                children: [
//                                 CustomButton(
//                                     height: getVerticalSize(40),
//                                     width: getHorizontalSize(92),
//                                     text: "Filter",
//                                     variant: ButtonVariant.OutlineGray300,
//                                     shape: ButtonShape.RoundedBorder5,
//                                     padding: ButtonPadding.PaddingT9,
//                                     fontStyle: ButtonFontStyle.ManropeSemiBold14Gray900_1,
//                                     suffixWidget: Container(
//                                         margin: getMargin(left: 10),
//                                         child: CustomImageView(
//                                             svgPath: ImageConstant.imgMenuGray900
//                                         )
//                                     )
//                                 ),
//                                 CustomButton(
//                                     height: getVerticalSize(40),
//                                     width: getHorizontalSize(87),
//                                     text: "Sort",
//                                     margin: getMargin(left: 8),
//                                     variant: ButtonVariant.OutlineGray300,
//                                     shape: ButtonShape.RoundedBorder5,
//                                     padding: ButtonPadding.PaddingT9,
//                                     fontStyle: ButtonFontStyle.ManropeSemiBold14Gray900_1,
//                                     suffixWidget: Container(
//                                         margin: getMargin(left: 10),
//                                         child: CustomImageView(
//                                             svgPath: ImageConstant.imgSort
//                                         )
//                                     )
//                                 ),
//                                 Spacer(),
//                                 Padding(
//                                     padding: getPadding(
//                                         top: 10,
//                                         bottom: 9
//                                     ),
//                                     child: Text(
//                                         "8 homes",
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtManropeSemiBold14Gray900
//                                     )
//                                 )
//                                ]
//                            ),
//                            Container(
//                                height: getVerticalSize(180),
//                                width: getHorizontalSize(327),
//                                margin: getMargin(top: 24),
//                                child: Stack(
//                                    alignment: Alignment.topRight,
//                                    children: [
//                                     CustomImageView(
//                                         imagePath: ImageConstant.imgImg418x3271,
//                                         height: getVerticalSize(180),
//                                         width: getHorizontalSize(327),
//                                         radius: BorderRadius.circular(
//                                             getHorizontalSize(10)
//                                         ),
//                                         alignment: Alignment.center
//                                     ),
//                                     CustomIconButton(
//                                         height: 36,
//                                         width: 36,
//                                         margin: getMargin(
//                                             top: 16,
//                                             right: 16
//                                         ),
//                                         variant: IconButtonVariant.OutlineBluegray50_1,
//                                         alignment: Alignment.topRight,
//                                         child: CustomImageView(
//                                             svgPath: ImageConstant.imgFavorite20x20
//                                         )
//                                     )
//                                    ]
//                                )
//                            ),
//                            Padding(
//                                padding: getPadding(top: 16),
//                                child: Row(
//                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                    children: [
//                                     Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         children: [
//                                          Text(
//                                              "Golden Meadows",
//                                              overflow: TextOverflow.ellipsis,
//                                              textAlign: TextAlign.left,
//                                              style: AppStyle.txtManropeExtraBold18.copyWith(
//                                                  letterSpacing: getHorizontalSize(0.2)
//                                              )
//                                          ),
//                                          Padding(
//                                              padding: getPadding(top: 11),
//                                              child: Row(
//                                                  children: [
//                                                   CustomImageView(
//                                                       svgPath: ImageConstant.imgLocation,
//                                                       height: getSize(14),
//                                                       width: getSize(14),
//                                                       margin: getMargin(bottom: 2)
//                                                   ),
//                                                   Padding(
//                                                       padding: getPadding(left: 4),
//                                                       child: Text(
//                                                           "St. Celina, Delaware 10299",
//                                                           overflow: TextOverflow.ellipsis,
//                                                           textAlign: TextAlign.left,
//                                                           style: AppStyle.txtManrope12.copyWith(
//                                                               letterSpacing: getHorizontalSize(0.4)
//                                                           )
//                                                       )
//                                                   )
//                                                  ]
//                                              )
//                                          )
//                                         ]
//                                     ),
//                                     Padding(
//                                         padding: getPadding(top: 1),
//                                         child: Column(
//                                             crossAxisAlignment: CrossAxisAlignment.end,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             children: [
//                                              Text(
//                                                  "Price",
//                                                  overflow: TextOverflow.ellipsis,
//                                                  textAlign: TextAlign.left,
//                                                  style: AppStyle.txtManrope12.copyWith(
//                                                      letterSpacing: getHorizontalSize(0.4)
//                                                  )
//                                              ),
//                                              Padding(
//                                                  padding: getPadding(top: 10),
//                                                  child: Text(
//                                                      "500",
//                                                      overflow: TextOverflow.ellipsis,
//                                                      textAlign: TextAlign.left,
//                                                      style: AppStyle.txtManropeExtraBold18Blue500.copyWith(
//                                                          letterSpacing: getHorizontalSize(0.2)
//                                                      )
//                                                  )
//                                              )
//                                             ]
//                                         )
//                                     )
//                                    ]
//                                )
//                            ),
//                            Container(
//                                height: getVerticalSize(180),
//                                width: getHorizontalSize(327),
//                                margin: getMargin(top: 22),
//                                child: Stack(
//                                    alignment: Alignment.topRight,
//                                    children: [
//                                      CustomImageView(
//                                          imagePath: ImageConstant.imgImg180x3271,
//                                          height: getVerticalSize(180),
//                                          width: getHorizontalSize(327),
//                                          radius: BorderRadius.circular(
//                                              getHorizontalSize(10)
//                                          ),
//                                          alignment: Alignment.center
//                                      ),
//                                      CustomIconButton(
//                                          height: 36,
//                                          width: 36,
//                                          margin: getMargin(
//                                              top: 16,
//                                              right: 16
//                                          ),
//                                          variant: IconButtonVariant.OutlineBluegray50_1,
//                                          alignment: Alignment.topRight,
//                                          child: CustomImageView(
//                                              svgPath: ImageConstant.imgFavorite20x20
//                                          )
//                                      )
//                                    ]
//                                )
//                            ),
//                             Padding(
//                                 padding: getPadding(top: 16),
//                                 child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           mainAxisAlignment: MainAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                                 "Golden Meadows",
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.left,
//                                                 style: AppStyle.txtManropeExtraBold18.copyWith(
//                                                     letterSpacing: getHorizontalSize(0.2)
//                                                 )
//                                             ),
//                                             Padding(
//                                                 padding: getPadding(top: 11),
//                                                 child: Row(
//                                                     children: [
//                                                       CustomImageView(
//                                                           svgPath: ImageConstant.imgLocation,
//                                                           height: getSize(14),
//                                                           width: getSize(14),
//                                                           margin: getMargin(bottom: 2)
//                                                       ),
//                                                       Padding(
//                                                           padding: getPadding(left: 4),
//                                                           child: Text(
//                                                               "St. Celina, Delaware 10299",
//                                                               overflow: TextOverflow.ellipsis,
//                                                               textAlign: TextAlign.left,
//                                                               style: AppStyle.txtManrope12.copyWith(
//                                                                   letterSpacing: getHorizontalSize(0.4)
//                                                               )
//                                                           )
//                                                       )
//                                                     ]
//                                                 )
//                                             )
//                                           ]
//                                       ),
//                                       Padding(
//                                           padding: getPadding(top: 1),
//                                           child: Column(
//                                               crossAxisAlignment: CrossAxisAlignment.end,
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                     "Price",
//                                                     overflow: TextOverflow.ellipsis,
//                                                     textAlign: TextAlign.left,
//                                                     style: AppStyle.txtManrope12.copyWith(
//                                                         letterSpacing: getHorizontalSize(0.4)
//                                                     )
//                                                 ),
//                                                 Padding(
//                                                     padding: getPadding(top: 10),
//                                                     child: Text(
//                                                         "500", overflow: TextOverflow.ellipsis,
//                                                         textAlign: TextAlign.left,
//                                                         style: AppStyle.txtManropeExtraBold18Blue500.copyWith(
//                                                             letterSpacing: getHorizontalSize(0.2)
//                                                         )
//                                                     )
//                                                 )
//                                               ]
//                                           )
//                                       )
//                                     ]
//                                 )
//                             ),
//                             Container(
//                                 height: getVerticalSize(180),
//                                 width: getHorizontalSize(327),
//                                 margin: getMargin(top: 22),
//                                 child: Stack(
//                                     alignment: Alignment.topRight,
//                                     children: [
//                                       CustomImageView(
//                                           imagePath: ImageConstant.imgImg180x3272,
//                                           height: getVerticalSize(180),
//                                           width: getHorizontalSize(327),
//                                           radius: BorderRadius.circular(
//                                               getHorizontalSize(10)
//                                           ),
//                                           alignment: Alignment.center
//                                       ),
//                                       CustomIconButton(
//                                           height: 36,
//                                           width: 36,
//                                           margin: getMargin(
//                                               top: 16,
//                                               right: 16
//                                           ),
//                                           variant: IconButtonVariant.OutlineBluegray50_1,
//                                           alignment: Alignment.topRight,
//                                           child: CustomImageView(
//                                               svgPath: ImageConstant.imgFavorite20x20
//                                           )
//                                       )
//                                     ]
//                                 )
//                             )
//                           ]
//                       )
//                   )
//               )
//           ),
//           bottomNavigationBar: Padding(
//               padding: getPadding(
//                   left: 24,
//                   right: 24,
//                   bottom: 35
//               ),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                               "Golden Meadows",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtManropeExtraBold18.copyWith(
//                                   letterSpacing: getHorizontalSize(0.2)
//                               )
//                           ),
//                           Padding(
//                               padding: getPadding(top: 11),
//                               child: Row(
//                                   children: [
//                                     CustomImageView(
//                                         svgPath: ImageConstant.imgLocation,
//                                         height: getSize(14),
//                                         width: getSize(14),
//                                         margin: getMargin(bottom: 2)
//                                     ),
//                                     Padding(
//                                         padding: getPadding(left: 4),
//                                         child: Text(
//                                             "St. Celina, Delaware 10299",
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style: AppStyle.txtManrope12.copyWith(
//                                                 letterSpacing: getHorizontalSize(0.4)
//                                             )
//                                         )
//                                     )
//                                   ]
//                               )
//                           )
//                         ]
//                     ),
//                     Padding(
//                         padding: getPadding(top: 1),
//                         child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                   "Price",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtManrope12.copyWith(
//                                       letterSpacing: getHorizontalSize(0.4)
//                                   )
//                               ),
//                               Padding(
//                                   padding: getPadding(top: 10),
//                                   child: Text(
//                                       "500",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeExtraBold18Blue500.copyWith(
//                                           letterSpacing: getHorizontalSize(0.2)
//                                       )
//                                   )
//                               )
//                             ]
//                         )
//                     )
//                   ]
//               )
//           )
//       )
//   );
//  }
// onTapArrowleft21(BuildContext context) {
//    Navigator.pop(context);
//  }
// }
