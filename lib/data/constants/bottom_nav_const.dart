import 'package:cribstock_test/presentation/screen/card_screen.dart';
import 'package:cribstock_test/presentation/screen/home_screen.dart';
import 'package:cribstock_test/presentation/screen/report_screen.dart';
import 'package:cribstock_test/presentation/screen/stock_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  const HomeScreen(),
  const ReporScreen(),
  const StockScreen(),
  const CardScreen(),
];

List<String> textList = [
  "Home",
  "Report",
  "Stock",
  "Cards",
];

List<IconData> iconList = [
  Icons.home,
  Icons.pie_chart,
  Icons.bar_chart,
  Icons.credit_card,
];
