import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';

class CustomBottomBar extends StatefulWidget {

  CustomBottomBar(
      {super.key, 
        this.onChanged,
      });

  Function(BottomBarEnum)? onChanged;

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome24x24,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavorite,
      title: "Favorites",
      type: BottomBarEnum.Favorites,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgScanQr,
      title: "Scan QR",
      type: BottomBarEnum.Myhome,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfile,
      title: "Profile",
      type: BottomBarEnum.Profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.blueGray1000f,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: const Offset(0, -8),
          ),
        ],
      ),

      child: BottomNavigationBar(
        backgroundColor: Colors.transparent, // color
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(24),
                  width: getSize(24),
                  color: ColorConstant.blueGray500,
                ),

                Padding(
                  padding: getPadding(top: 5),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeMedium10.copyWith(
                      letterSpacing: getHorizontalSize(0.4),
                      color: ColorConstant.blueGray500,
                    ),
                  ),
                ),
              ],
            ),

            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(24),
                  width: getSize(24),
                  //color: ColorConstant.blue500,
                  //color: Colors.purple[100],
                  //color: ColorConstant.appBarColor,
                  color: Colors.deepPurple[700],
                ),

                Padding(
                  padding: getPadding(top: 4),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeMedium10Blue500.copyWith(
                      letterSpacing: getHorizontalSize(0.4),
                      color: ColorConstant.blue500,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),

        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },

      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Favorites,
  //Discover,
  Myhome,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel(
      {
        required this.icon,
        this.title,
        required this.type,
      });

  String icon;
  String? title;
  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
