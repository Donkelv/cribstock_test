import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/screen/bottom_nav_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);
  runApp(const BottomNavScreen());
}

