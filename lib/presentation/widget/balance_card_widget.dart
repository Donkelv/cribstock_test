import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';

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
      height: 170.0.h,
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
      child: Padding(
        padding: EdgeInsets.only(left: 24.0.w, right: 24.0.w,   top: 25.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Available Balance", style: TextStyle(color: greyTextColor, fontWeight: FontWeight.w500, fontSize: 13.0.sp),),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    Text(
                      "\$16,485",
                      style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0.sp),
                    )
                  ],
                ),
                Container(
                  width: 50.0.w,
                  height: 50.0.h,
                  decoration: const BoxDecoration(
                    color: greyColor,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(
                            color: greyTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0.sp),
                      ),
                      SizedBox(
                        width: 2.0.w,
                      ),
                      const Icon(Icons.arrow_right,color: primaryColor,)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: (){

                  },
                  child: Row(
                    children: [
                      Text(
                        "US Dollar",
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0.sp),
                      ),
                      SizedBox(
                        width: 2.0.w,
                      ),
                      const Icon(Icons.arrow_drop_down, color: primaryColor,)
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      
      ),
    );
  }
}
