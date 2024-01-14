// import 'package:christian_vridge_s_application/core/app_export.dart';
// import 'package:christian_vridge_s_application/widgets/app_bar/appbar_iconbutton_1.dart';
// import 'package:christian_vridge_s_application/widgets/app_bar/appbar_subtitle.dart';
// import 'package:christian_vridge_s_application/widgets/app_bar/custom_app_bar.dart';
// import 'package:christian_vridge_s_application/widgets/custom_switch.dart';
// import 'package:flutter/material.dart';
// import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Icon_Button_1.dart';
// import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
// import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
// //import 'package:trial_v3/app_essentials/tools/c';
//
//
// class SettingsScreen extends StatelessWidget {
//
//   bool isSelectedSwitch = false;
//   bool isSelectedSwitch1 = false;
//
// @override Widget build(BuildContext context) {
//   return SafeArea(
//       child: Scaffold(
//           backgroundColor: ColorConstant.gray50,
//           appBar: CustomAppBar(
//               height: getVerticalSize(48),
//               leadingWidth: 64,
//               leading: AppBarIconButton1(
//                   svgPath: ImageConstant.imgArrowleft,
//                   margin: getMargin(left: 24),
//                   onTap: () {
//                     onTapArrowleft16(context);
//                   }),
//               centerTitle: true,
//               title: AppbarSubtitle(text: "Settings")
//           ),
//           body: Container(
//               width: double.maxFinite,
//               padding: getPadding(
//                   left: 24,
//                   top: 34,
//                   right: 24,
//                   bottom: 34
//               ),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                         "Application Settings",
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtManropeExtraBold14Bluegray500.copyWith(
//                             letterSpacing: getHorizontalSize(0.2)
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 14),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                   padding: getPadding(
//                                       top: 2,
//                                       bottom: 1
//                                   ),
//                                   child: Text(
//                                       "Notification",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   )
//                               ),
//                               CustomSwitch(
//                                   value: isSelectedSwitch,
//                                   onChanged: (value) {
//                                     isSelectedSwitch = value;}
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 16),
//                         child: Divider(
//                             height: getVerticalSize(1),
//                             thickness: getVerticalSize(1),
//                             color: ColorConstant.gray300
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 15),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                   padding: getPadding(
//                                       top: 2,
//                                       bottom: 1
//                                   ),
//                                   child: Text(
//                                       "Dark Mode",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   )
//                               ),
//                               CustomSwitch(
//                                 value: isSelectedSwitch1,
//                                 onChanged: (value) {
//                                   isSelectedSwitch1 = value;
//                                 },
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 16),
//                         child: Divider(
//                             height: getVerticalSize(1),
//                             thickness: getVerticalSize(1),
//                             color: ColorConstant.gray300
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 15),
//                         child: Row(
//                             children: [
//                               Padding(
//                                   padding: getPadding(top: 3),
//                                   child: Text(
//                                       "Language",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   )
//                               ),
//                               Spacer(),
//                               Padding(
//                                   padding: getPadding(
//                                       top: 2,
//                                       bottom: 1
//                                   ),
//                                   child: Text(
//                                       "English",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14
//                                   )
//                               ),
//                               CustomImageView(
//                                   svgPath: ImageConstant.imgArrowrightBlueGray500,
//                                   height: getSize(20),
//                                   width: getSize(20),
//                                   margin: getMargin(
//                                       left: 4,
//                                       bottom: 3
//                                   )
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 16),
//                         child: Divider(
//                             height: getVerticalSize(1),
//                             thickness: getVerticalSize(1),
//                             color: ColorConstant.gray300
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 15),
//                         child: Row(
//                             children: [
//                               Padding(
//                                   padding: getPadding(top: 2),
//                                   child: Text(
//                                       "Country",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   )
//                               ),
//                               Spacer(),
//                               Padding(
//                                   padding: getPadding(bottom: 1),
//                                   child: Text(
//                                       "US",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14
//                                   )
//                               ),
//                               CustomImageView(
//                                   svgPath: ImageConstant.imgArrowrightBlueGray500,
//                                   height: getSize(20),
//                                   width: getSize(20),
//                                   margin: getMargin(
//                                       left: 4,
//                                       bottom: 2
//                                   )
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 33),
//                         child: Text(
//                             "Support",
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtManropeExtraBold14Bluegray500.copyWith(
//                                 letterSpacing: getHorizontalSize(0.2)
//                             )
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 14),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                   "Terms of use",
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtManropeSemiBold14Gray900
//                               ),
//                               CustomImageView(
//                                   svgPath: ImageConstant.imgArrowright20x20,
//                                   height: getSize(20),
//                                   width: getSize(20)
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 16),
//                         child: Divider(
//                             height: getVerticalSize(1),
//                             thickness: getVerticalSize(1),
//                             color: ColorConstant.gray300
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 15),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                   padding: getPadding(top: 2),
//                                   child: Text(
//                                       "Privacy Policy",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   )
//                               ),
//                               CustomImageView(
//                                   svgPath: ImageConstant.imgArrowright20x20,
//                                   height: getSize(20),
//                                   width: getSize(20),
//                                   margin: getMargin(bottom: 2)
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 14),
//                         child: Divider(
//                             height: getVerticalSize(1),
//                             thickness: getVerticalSize(1),
//                             color: ColorConstant.gray300
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 15),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                   padding: getPadding(top: 1),
//                                   child: Text(
//                                       "About",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   )
//                               ),
//                               CustomImageView(
//                                   svgPath: ImageConstant.imgArrowright20x20,
//                                   height: getSize(20),
//                                   width: getSize(20),
//                                   margin: getMargin(bottom: 1)
//                               )
//                             ]
//                         )
//                     ),
//                     Padding(
//                         padding: getPadding(top: 15),
//                         child: Divider(
//                             height: getVerticalSize(1),
//                             thickness: getVerticalSize(1),
//                             color: ColorConstant.gray300
//                         )
//                     ),
//                     GestureDetector(
//                         onTap: () {
//                           onTapFaqs(context);
//                         },
//                         child: Padding(
//                             padding: getPadding(
//                                 top: 15,
//                                 bottom: 5
//                             ),
//                             child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                       "FAQs",
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtManropeSemiBold14Gray900
//                                   ),
//                                   CustomImageView(
//                                       svgPath: ImageConstant.imgArrowright20x20,
//                                       height: getSize(20),
//                                       width: getSize(20)
//                                   )
//                                 ]
//                             )
//                         )
//                     )
//                   ]
//               )
//           )
//       )
//   );
// }
//
// onTapFaqs(BuildContext context) {
//   Navigator.pushNamed(context, AppRoute.faqsGetHelpScreen);
// }
//
// onTapArrowleft16(BuildContext context) {
//   Navigator.pop(context);
// }
// }
