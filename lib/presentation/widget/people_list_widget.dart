import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class PeopleListWidget extends StatelessWidget {
  final int index;
  const PeopleListWidget({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0.w),
      child: index == 0
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0.w,
                      height: 50.0.h,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10.0.h,
                    // ),
                    Text(
                      "Search",
                      style: TextStyle(
                          fontSize: 11.0.sp,
                          color: blackColor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 3.0.w,
                ),
                VerticalDivider(
                  color: greyColor,
                  width: 1.0.w,
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50.0.w,
                  height: 50.0.h,
                  decoration: const BoxDecoration(
                    color: greyColor,
                    shape: BoxShape.circle,
                  ),
                ),
                // SizedBox(
                //   height: 5.0.h,
                // ),
                Text(
                  "Anne",
                  style: TextStyle(
                    fontSize: 11.0.sp,
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
    );
  }
}
