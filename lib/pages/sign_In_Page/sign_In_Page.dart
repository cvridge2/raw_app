import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/tools/custom_Text_Form_Field.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/custom_Button.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

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
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(top: 100),
              ),

              Align(
                alignment: Alignment.center,
                child: Text(
                  "LOGIN",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeExtraBold24Gray900,
                ),
              ),

              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(top: 9),
                    child: Text(
                      "Sign in to continue",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtManrope16.copyWith(
                          letterSpacing: getHorizontalSize(0.3)
                      ),
                    ),
                  ),
              ),

              CustomTextFormField(
                focusNode: FocusNode(),
                controller: usernameController,
                hintText: "Username",
                margin: getMargin(top: 20),
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

              CustomButton(
                height: getVerticalSize(56),
                text: "Sign In",
                margin: getMargin(top: 20),
                shape: ButtonShape.RoundedBorder10,
                padding: ButtonPadding.PaddingAll16,
                fontStyle: ButtonFontStyle.ManropeBold16Gray50_1,
                onTap: () {
                  onTapSignIn(context);
                },
              ),

              // need to fix the button/click functionality
              Padding(
                padding: getPadding(top: 10),
                child: Text(
                  "Forgot password?",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeSemiBold14,
                ),
              ),

              Padding(
                padding: getPadding(
                  left: 42,
                  top: 30,
                  right: 41,
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
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
                          padding: getPadding(
                            left: 4,
                            top: 1,
                          ),
                          child: Text(
                            "Sign Up",
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
            ],
          ),
        ),
      ),
    );
  }

  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.sign_Up_Page);
  }

  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.bottom_Bar_Container);
  }
}