import 'package:cribstock_test/data/constants/color_const.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class MoneyManagementContainer extends StatelessWidget {
  const MoneyManagementContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      //height: 140.0.h,
      margin: EdgeInsets.symmetric(horizontal: 25.0.w),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.1),
              blurRadius: 18.0,
              spreadRadius: 0.0,
              offset: const Offset(5.0, 2.0),
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 30.0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 75.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: primaryColor.withOpacity(0.2)),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Text(
                  "Add money",
                  style:
                      TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  width: 75.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color.fromARGB(246, 244, 208, 167),
                  ),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(246, 244, 149, 41),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Text(
                  "Send money",
                  style:
                      TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  width: 75.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: greyColor.withOpacity(0.3),
                  ),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Text(
                  "More",
                  style:
                      TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
