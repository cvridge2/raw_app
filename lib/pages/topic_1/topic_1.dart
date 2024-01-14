import 'package:flutter/material.dart';
import 'package:trial_v3/pages/topic_1/widget/topic_1_Item_Widget.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Icon_Button_1.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';

class Topic1 extends StatelessWidget {
  const Topic1({super.key});


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
            leading: AppBarLogo(
              height: 100,
              width: 100,
              svgPath: ImageConstant.imgArrowleft,
              margin: getPadding(
                left: 25,
              ),
              onTap: () {
                onTapArrowleft4(context);
              }),

            centerTitle: true,
            title: AppbarSubtitle(text: "Topic 1"),
          ),

          body: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 24,
              top: 20,
              right: 24,
              bottom: 20,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(16)
                    );
                  },

                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Topic1ItemWidget(
                      onTapLesson: () {
                        onTapLesson(context);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      //),
    );
  }
  onTapLesson(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.new_next);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  onTap(BuildContext context) {
    Navigator.pop(context);
  }
}
