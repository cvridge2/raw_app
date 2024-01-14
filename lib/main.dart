import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';

void main() {

  //hindi pa sure kung kaylangan
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  // --

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),

      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash_Screen,
      routes: AppRoute.routes,
    );
  }
}

