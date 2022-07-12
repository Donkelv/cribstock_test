import 'package:cribstock_test/data/constants/color_const.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';





class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0.w),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 18.0,
            spreadRadius: 0.0,
            offset: const Offset(5.0, 6.0),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 14.0.h),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 15.0.h),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 40.0.w,
                              height: 40.0.h,
                              decoration: const BoxDecoration(
                                color: greyColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 10.0.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Food",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 14.0.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4.0.h,
                                ),
                                Text(
                                  "14 April 2019",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 11.0.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          "\$450",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
