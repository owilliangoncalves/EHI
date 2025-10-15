import 'dart:io';
import 'package:ehi_system/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Color getBackgroundColor() {
  if (kIsWeb) {
    return azul60;
  } else if (Platform.isLinux || Platform.isMacOS) {
    return Colors.transparent;
  } else {
    return azul60;
  }
}
