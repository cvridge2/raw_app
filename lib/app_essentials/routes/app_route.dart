
import 'package:flutter/material.dart';
import 'package:trial_v3/pages/edit_Profile_Page/edit_Profile_Page.dart';
import 'package:trial_v3/pages/topic_1/topic_1.dart';
import 'package:trial_v3/pages/topic_2/topic_2.dart';
import 'package:trial_v3/pages/topic_3/topic_3.dart';
import 'package:trial_v3/pages/sign_In_Page/sign_In_Page.dart';
import 'package:trial_v3/pages/sign_Up_Page/sign_Up_Page.dart';
import 'package:trial_v3/pages/welcome_Page/welcome_Page.dart';
import 'package:trial_v3/pages/splash_Screen/splash_Screen.dart';
import 'package:trial_v3/pages/others/old_Home_Page/old_Home_Page.dart';
import 'package:trial_v3/pages/bottom_Bar_Container/bottom_Bar_Container.dart';
import 'package:trial_v3/pages/profile_Page/profile_Page.dart';
import 'package:trial_v3/pages/home_Page/home_Page.dart';
import 'package:trial_v3/pages/others/new_next/new_next.dart';
import 'package:trial_v3/pages/others/next_page/next_page.dart';
import 'package:trial_v3/pages/favorite_Page/favorite_Page.dart';
import 'package:trial_v3/pages/settings_Page/settings_Page.dart';

class AppRoute {
  static const String splash_Screen = '/splash_Screen';
  static const String welcome_Page = '/welcome_Page';
  static const String sign_In_Page = '/sign_In_Page';
  static const String sign_Up_Page = '/sign_Up_Page';
  static const String home_Page = '/home_Page';
  static const String profile_Page = '/profile_Page';

  static const String bottom_Bar_Container = '/bottom_Bar_Container';

  static const String topic_1 = '/topic_1';
  static const String topic_2 = '/topic_2';
  static const String topic_3 = '/topic_3';

  static const String favorite_Page = '/favorite_Page';
  static const String edit_Profile_Page = '/edit_Profile_Page';
  static const String settings_Page = '/settings_Page';

  static const String next = '/next_page';
  static const String new_next = '/new_next';

  //static const String new_Home_Page = '/new_Home_Page';
  static const String old_Home_Page = '/old_Home_Page';


  static Map<String, WidgetBuilder> routes = {

    splash_Screen: (context) => const SplashScreen(),
    welcome_Page: (context) => const WelcomePage(),
    sign_In_Page: (context) => SignInPage(),
    sign_Up_Page: (context) => SignUpPage(),
    home_Page: (context) => const HomePage(),
    profile_Page: (context) => const ProfilePage(),

    bottom_Bar_Container: (context) => BottomBarContainer(),

    topic_1: (context) => const Topic1(),
    topic_2: (context) => const Topic2(),
    topic_3: (context) => const Topic3(),

    favorite_Page: (context) => const FavoritePage(),
    edit_Profile_Page: (context) => EditProfilePage(),
    settings_Page: (context) => SettingsPage(),

    // delete
    next: (context) => const next_page(),
    new_next: (context) => const new_next_page(),

    // new
    //new_Home_Page: (context) => NewHomePage(),

    // new home page

    old_Home_Page: (context) => oldHomePage(),
  };
}