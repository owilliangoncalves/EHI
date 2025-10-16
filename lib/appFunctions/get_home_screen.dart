import 'dart:io';
import 'package:ehi_system/appFunctions/get_background_color.dart';
import 'package:ehi_system/appWidgets/mobile/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget getHomeScreen() {
  if (kIsWeb) {
    return Scaffold();
  } else if (Platform.isAndroid || Platform.isIOS) {
    return Scaffold(
      body: MobileFormsLogin(),
      backgroundColor: getBackgroundColor(),
    );
  } else {
    return Scaffold();
  }
}
