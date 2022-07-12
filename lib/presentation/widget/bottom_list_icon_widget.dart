import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/constants/bottom_nav_const.dart';
import '../../data/constants/color_const.dart';

class BottomListWidgetIconWidget extends StatelessWidget {
  final VoidCallback onTap;
  final int i;
  final int currentIndex;
  const BottomListWidgetIconWidget(
      {Key? key, required this.onTap, required this.i, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(35.0.h),
        onTap: onTap,
        child: Container(
          width: 60.0.w,
          height: 60.0.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconList[i],
                color: i == currentIndex ? primaryColor : greyColor,
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                textList[i],
                style: TextStyle(
                    fontSize: 11.0.sp,
                    color: i == currentIndex ? primaryColor : greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
