import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';





class InvestmentWidget extends StatelessWidget {
  const InvestmentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 45.0.w,
                height: 45.0.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: greyColor,
                ),
              ),
              SizedBox(
                width: 7.0.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple",
                    style: TextStyle(
                        fontSize: 15.0.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    "3 Shares . \$280.90",
                    style: TextStyle(
                        fontSize: 11.0.sp,
                        color: greyTextColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$1404.90",
                style:
                    TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_drop_up,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 2.0.w,
                  ),
                  Text(
                    "3.04%",
                    style: TextStyle(
                        fontSize: 11.0.sp,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
