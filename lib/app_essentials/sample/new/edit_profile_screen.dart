// import 'package:christian_vridge_s_application/core/app_export.dart';import 'package:christian_vridge_s_application/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:christian_vridge_s_application/widgets/app_bar/appbar_subtitle.dart';import 'package:christian_vridge_s_application/widgets/app_bar/custom_app_bar.dart';import 'package:christian_vridge_s_application/widgets/custom_button.dart';import 'package:christian_vridge_s_application/widgets/custom_icon_button.dart';import 'package:christian_vridge_s_application/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// // ignore_for_file: must_be_immutable
//
// // ignore_for_file: must_be_immutable
//
// // ignore_for_file: must_be_immutable
//
// // ignore_for_file: must_be_immutable
// class EditProfileScreen extends StatelessWidget {
//
//  TextEditingController fullnameOneController = TextEditingController();
//  TextEditingController emailOneController = TextEditingController();
//  TextEditingController addressOneController = TextEditingController();
//  TextEditingController passwordOneController = TextEditingController();
//
// @override Widget build(BuildContext context) {
//  return SafeArea(
//      child: Scaffold(
//          backgroundColor: ColorConstant.gray50,
//          resizeToAvoidBottomInset: false,
//          appBar: CustomAppBar(
//              height: getVerticalSize(48),
//              leadingWidth: 64,
//              leading: AppbarIconbutton1(
//                  svgPath: ImageConstant.imgArrowleft,
//                  margin: getMargin(left: 24),
//                  onTap: () {
//                   onTapArrowleft19(context);
//                  }),
//              centerTitle: true,
//              title: AppbarSubtitle(
//                  text: "Edit Profile")
//          ),
//          body: Container(
//              width: double.maxFinite,
//              padding: getPadding(
//                  left: 24,
//                  top: 32,
//                  right: 24,
//                  bottom: 32
//              ),
//              child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: [
//                   Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                           height: getSize(100),
//                           width: getSize(100),
//                           child: Stack(
//                               alignment: Alignment.bottomRight,
//                               children: [
//                                CustomImageView(
//                                    imagePath: ImageConstant.imgRectangle361100x100,
//                                    height: getSize(100),
//                                    width: getSize(100),
//                                    radius: BorderRadius.circular(
//                                        getHorizontalSize(50)
//                                    ),
//                                    alignment: Alignment.center
//                                ),
//                                CustomIconButton(
//                                    height: 24,
//                                    width: 24,
//                                    variant: IconButtonVariant.OutlineGray50,
//                                    shape: IconButtonShape.RoundedBorder10,
//                                    padding: IconButtonPadding.PaddingAll5,
//                                    alignment: Alignment.bottomRight,
//                                    child: CustomImageView(
//                                        svgPath: ImageConstant.imgEdit12x12
//                                    )
//                                )
//                               ]
//                           )
//                       )
//                   ),
//                   Padding(
//                       padding: getPadding(top: 33),
//                       child: Text(
//                           "Full Name",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
//                               letterSpacing: getHorizontalSize(0.4)
//                           )
//                       )
//                   ),
//                   CustomTextFormField(
//                       focusNode: FocusNode(),
//                       controller: fullnameOneController,
//                       hintText: "Andrew Preston",
//                       margin: getMargin(top: 7)
//                   ),
//                   Padding(
//                       padding: getPadding(top: 17),
//                       child: Text(
//                           "Email",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
//                               letterSpacing: getHorizontalSize(0.4)
//                           )
//                       )
//                   ),
//                   CustomTextFormField(
//                       focusNode: FocusNode(),
//                       controller: emailOneController,
//                       hintText: "test@gmail.com",
//                       margin: getMargin(top: 7),
//                       textInputType: TextInputType.emailAddress
//                   ),
//                   Padding(
//                       padding: getPadding(top: 17),
//                       child: Text(
//                           "Address",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
//                               letterSpacing: getHorizontalSize(0.4)
//                           )
//                       )
//                   ),
//                   CustomTextFormField(
//                       focusNode: FocusNode(),
//                       controller: addressOneController,
//                       hintText: "Merta Nadi Street 88, Kuta, Bali",
//                       margin: getMargin(top: 7)
//                   ),
//                   Padding(
//                       padding: getPadding(top: 17),
//                       child: Text(
//                           "Password",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
//                               letterSpacing: getHorizontalSize(0.4)
//                           )
//                       )
//                   ),
//                   CustomTextFormField(
//                       focusNode: FocusNode(),
//                       controller: passwordOneController,
//                       hintText: "123456",
//                       margin: getMargin(
//                           top: 7,
//                           bottom: 5
//                       ),
//                       textInputAction: TextInputAction.done
//                   )
//                  ]
//              )
//          ),
//          bottomNavigationBar: Container(
//              padding: getPadding(all: 24),
//              decoration: AppDecoration.outlineBluegray1000f,
//              child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: [
//                   CustomButton(
//                       height: getVerticalSize(56),
//                       text: "Save Change",
//                       shape: ButtonShape.RoundedBorder10,
//                       padding: ButtonPadding.PaddingAll16,
//                       fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1
//                   )
//                  ]
//              )
//          )
//      )
//  );
// }
// onTapArrowleft19(BuildContext context) {
//  Navigator.pop(context);
// }
// }
