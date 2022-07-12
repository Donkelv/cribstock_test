

import 'package:cribstock_test/presentation/widget/bottom_list_icon_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:cribstock_test/data/constants/bottom_nav_const.dart';
import 'package:cribstock_test/data/constants/color_const.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {


  /// Page controller
  final PageController _controller = PageController();

  // tracks current page
  int _currentIndex = 0;

  ///Set index of current page
  void onItemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }


  ///animate to next page
  void onPageChanged(currentIndex) {
    const Duration _duration = Duration(milliseconds: 300);
    _controller.animateToPage(currentIndex,
        duration: _duration, curve: Curves.easeInOut);
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      body: PageView(
        controller: _controller,
        onPageChanged: onItemTapped,
        physics: const NeverScrollableScrollPhysics(),
        children:  screens.toList(),
      ),
      bottomNavigationBar: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.08),
            blurRadius: 30.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, -20.0),
            ),
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 25.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < screens.length; i++)
              BottomListWidgetIconWidget(
                onTap: (){
                  setState(() {
                      onPageChanged(i);
                    });
                }, 
                i: i,
                currentIndex: _currentIndex,
              ),

            ],
          ),
        ),
      ),
    );
  }
}