import 'dart:io';
import 'package:ehi_system/appFunctions/get_background_color.dart';
import 'package:ehi_system/appScreens/mobile/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget getHomeScreen() {
  if (kIsWeb) {
    return Scaffold();
  } else if (Platform.isAndroid || Platform.isIOS) {
    return Scaffold(body: MobileHome(), backgroundColor: getBackgroundColor());
  } else {
    return Scaffold();
  }
}
