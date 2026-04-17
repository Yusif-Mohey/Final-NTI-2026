import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'custom_text.dart';

SnackBar customSnack(String errorMsg, {bool state = true}) {
  return SnackBar(
    // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    // margin: const EdgeInsets.only(bottom: 30, right: 20, left: 20),
    elevation: 10,
    behavior: SnackBarBehavior.floating,
    backgroundColor: state ? Colors.green[600] : Colors.red.shade900,
    content: FittedBox(
      child: Row(
        children: [
          Icon(CupertinoIcons.info, color: Colors.white),
          Gap(14),
          CustomText(
            text: errorMsg,
            color: Colors.white,
            fontSize: 10.sp,
            // fontWeight: FontWeight.w600,
          ),
        ],
      ),
    ),
  );
}
