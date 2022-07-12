import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:cribstock_test/presentation/widget/people_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/balance_card_widget.dart';
import '../widget/home_top_widget.dart';
import '../widget/money_management_widget.dart';
import '../widget/transaction_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          width: size.width,
          height: size.height,
          color: whiteColor,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: HomeTopWidget(size: size),
              ),
              Positioned.fill(
                top: 120.0.h,
                // left: 25.0.w,
                // right: 25.0.w,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BalanceCardWidget(size: size),
                      SizedBox(
                        height: 30.0.h,
                      ),
                      SizedBox(
                        height: 80.0.h,
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: 25.0.w),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return  PeopleListWidget(index: index,);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 35.0.h,
                      ),
                      MoneyManagementContainer(size: size),
                      SizedBox(
                        height: 40.0.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Transactions",
                              style: TextStyle(
                                  color: blackColor,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 11.0.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      const TransactionWidget(),
                      SizedBox(
                        height: 100.0.h,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

