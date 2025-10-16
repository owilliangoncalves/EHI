import 'package:ehi_system/appFunctions/get_home_screen.dart';
import 'package:ehi_system/appThemes/texts.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: AppStrings.debugStatus.debug,
      home: getHomeScreen(),
      theme: FontApp.montSerrat,
    );
  }
}
