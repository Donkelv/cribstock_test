import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/investment_widget.dart';
import '../widget/stock_top_card_widget.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40.0.w,
                        height: 40.0.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: greyColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_outline,
                              color: blackColor,
                            ),
                          ),
                          SizedBox(
                            width: 15.0.w,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_outlined,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.0.w),
                  width: size.width,
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
                      ]
                  ),
                  child: const StockTopCardWidget(),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 25.0.w),
                  child: Text("Investments", style: TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w600),),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Container(
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
                  child: Padding(padding: EdgeInsets.symmetric(
                          horizontal: 15.0.w, vertical: 5.0.h),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              shrinkWrap: true,
                            itemBuilder: (context, index){
                              return const InvestmentWidget();
                            }
                          ),
                    ),
                ),
                SizedBox(
                  height: 100.0.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
