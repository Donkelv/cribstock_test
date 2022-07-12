import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: whiteColor,
      child: Center(
        child: Text(
          "Card screen",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0.sp),
        ),
      ),
    );
  }
}
