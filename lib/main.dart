import 'package:cribstock_test/presentation/screen/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);
  runApp(const InitRoute());
}

class InitRoute extends StatelessWidget {
  const InitRoute({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
       designSize: const Size(375, 854),
      builder: (context, child) {
        return MaterialApp(
          title: 'Cribstock Test',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: const BottomNavScreen(),
        );
      }
    );
  }
}