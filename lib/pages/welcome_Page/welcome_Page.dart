import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/theme/app_Decoration.dart';
import 'package:trial_v3/app_essentials/tools/custom_Button.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.grey, // change this

        body: Container(
          width: size.width,
          height: size.height,
          // decoration: BoxDecoration(
          //   color: Colors.grey, // change this
          //   image: DecorationImage(
          //     image: AssetImage(
          //       ImageConstant.imageWelcomePageBg,
          //     ),
          //     fit: BoxFit.cover
          //   ),
          // ),

          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.black],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )
          ),

          child: Container(
            width: double.maxFinite,
            padding:
              getPadding(
                left: 26,
                top: 40,
                right: 26,
                bottom: 40,
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                const Spacer(),

                Container(
                  decoration: AppDecoration.textOutlineBlack9003f,
                  child: Text(
                    "Welcome to ARLab",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    //style: AppStyle.txtManropeExtraBold24
                    style: AppStyle.txtManropeExtraBold28WhiteA700,
                  ),
                ),

                Container(
                  width: getHorizontalSize(318),
                  margin: getMargin(
                    top: 17,
                    bottom: 120,
                  ),
                  child: Text(
                    "Learn, Experience and Enjoy Learning Physics through AR Technology",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtManropeMedium14WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: CustomButton(
          height: getVerticalSize(60),
          text: "Get Started",
          margin: getMargin(
            left: 24,
            right: 24,
            bottom: 58,
          ),
          shape: ButtonShape.RoundedBorder10,
          padding: ButtonPadding.PaddingAll16,
          fontStyle: ButtonFontStyle.ManropeBold16Bluegray50,
          onTap: () {
            onTapGetstarted(context);
          },
        ),
      ),
    );
  }

  onTapGetstarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.sign_In_Page);
  }
}

