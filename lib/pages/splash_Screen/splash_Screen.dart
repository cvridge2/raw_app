import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial_v3/pages/welcome_Page/welcome_Page.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WelcomePage(),
          )
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // splash screen background
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.black],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),

        // splash screen logo
        child: Center(
          child: Image.asset(
            ImageConstant.imageSplash,
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}