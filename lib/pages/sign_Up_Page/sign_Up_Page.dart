import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/tools/custom_Text_Form_Field.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/custom_Button.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage ({super.key});

  TextEditingController fullnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 39,
            right: 24,
            bottom: 39,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Create an",
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(24),
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    TextSpan(
                      text: " ARLab account",
                      style: TextStyle(
                        color: ColorConstant.blue500,
                        fontSize: getFontSize(24),
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),

              Padding(
                padding: getPadding(top: 7),
                child: Text(
                  "Create an account to continue",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManrope16.copyWith(
                    letterSpacing: getHorizontalSize(0.3),
                  ),
                ),
              ),

              CustomTextFormField(
                focusNode: FocusNode(),
                controller: fullnameController,
                hintText: "Full Name",
                margin: getMargin(top: 40),
              ),

              CustomTextFormField(
                focusNode: FocusNode(),
                controller: usernameController,
                hintText: "Username",
                margin: getMargin(top: 16),
                textInputType: TextInputType.text,
              ),

              // need to fix the eye, not clickable
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: passwordController,
                hintText: "Password",
                margin: getMargin(top: 16),
                padding: TextFormFieldPadding.PaddingT14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 15,
                    right: 16,
                    bottom: 14,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imageEye,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(49),
                ),
                isObscureText: true,
              ),

              CustomTextFormField(
                focusNode: FocusNode(),
                controller: passwordController,
                hintText: "Confirm Password",
                margin: getMargin(top: 16),
                padding: TextFormFieldPadding.PaddingT14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 15,
                    right: 16,
                    bottom: 14,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imageEye,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(49),
                ),
                isObscureText: true,
              ),

              // need to fix the button, not clickable yet, put gesture detector
              CustomButton(
                height: getVerticalSize(56),
                text: "Sign Up",
                margin: getMargin(top: 24),
                shape: ButtonShape.RoundedBorder10,
                padding: ButtonPadding.PaddingAll16,
                fontStyle: ButtonFontStyle.ManropeBold16Gray50_1,
              ),

              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 22,
                    top: 27,
                    right: 21,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You already have an account?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManrope16.copyWith(
                          letterSpacing: getHorizontalSize(0.3),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtSignup(context);
                        },
                        child: Padding(
                          padding: getPadding(left: 4),
                          child: Text(
                            "Sign In",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeExtraBold16.copyWith(
                              letterSpacing: getHorizontalSize(0.2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.sign_In_Page);
  }
}

