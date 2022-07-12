import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0.w),
      width: size.width,
      height: 200.0.h,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 18.0,
            spreadRadius: 0.0,
            offset: const Offset(5.0, 6.0),
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
