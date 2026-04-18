import 'package:flutter/material.dart';

class AppSizes {
  static late double kScreenWidth;
  static late double kScreenHeight;

  static void init(BuildContext context) {
    kScreenWidth = MediaQuery.of(context).size.width;
    kScreenHeight = MediaQuery.of(context).size.height;
  }
}
