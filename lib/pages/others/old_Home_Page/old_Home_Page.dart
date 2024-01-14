import 'package:flutter/material.dart';
import 'package:trial_v3/pages/others/old_Home_Page/widget/home_Item_Widget.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Icon_Button.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';

class oldHomePage extends StatelessWidget {

  TextEditingController group34551Controller = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  oldHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: getPadding(top:1),

        child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          resizeToAvoidBottomInset: false,

          appBar: CustomAppBar(
            height: getVerticalSize(60),
            centerTitle: true,
            title: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: AppbarSubtitle(
                text: "Home Page",
              ),
            ),

            actions: [
              AppBarIconButton(
                svgPath: ImageConstant.imgOptions,
                margin: getMargin(
                  left: 24,
                  top: 10,
                  right: 24,
                ),
              ),

              // AppBarIconButton(
              //     svgPath: ImageConstant.imgNotification,
              //     margin: getMargin(
              //       left: 12,
              //       top: 10,
              //       right: 34,
              //     ),
              //
              //     onTap: () {
              //       onTapNotification(context);
              //     }
              //
              // ),
            ],
            styleType: Style.bgFillGray50,
          ),

          body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  left: 24,
                  //top: 24, // ---
                  right: 24,
                  bottom: 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(top: 24),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(24),
                          );
                        },

                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return HomeItemWidget(
                            onTapImgImg: () {
                              onTapImgImg(context);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapImgImg(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }
}
