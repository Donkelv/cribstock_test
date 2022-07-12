
import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class StockTopCardWidget extends StatelessWidget {
  const StockTopCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 30.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$16,485.50",
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0.sp),
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "+\$190.25",
                        style: TextStyle(
                            color: greyTextColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 11.0.sp),
                      ),
                      SizedBox(
                        width: 3.0.w,
                      ),
                      const Icon(
                        Icons.arrow_drop_up,
                        color: primaryColor,
                      ),
                      Text(
                        "3.04%",
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 11.0.sp),
                      ),
                    ],
                  ),
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
          SizedBox(
            height: 24.0.h,
          ),
          Row(
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
                    style: TextStyle(
                        fontSize: 12.0.sp, fontWeight: FontWeight.w700),
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
                    style: TextStyle(
                        fontSize: 12.0.sp, fontWeight: FontWeight.w700),
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
                    style: TextStyle(
                        fontSize: 12.0.sp, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
