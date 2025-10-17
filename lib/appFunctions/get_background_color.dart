import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Color getBackgroundColor() {
  if (kIsWeb) {
    return Colors.white;
  } else if (Platform.isLinux || Platform.isMacOS) {
    return Colors.white;
  } else {
    return Colors.white;
  }
}
