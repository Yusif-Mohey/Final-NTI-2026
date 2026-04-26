import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/base_card.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ServicesCardScreen extends StatelessWidget {
  const ServicesCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseCard(
          hight: 120.h,
          width: double.infinity,
          child: Center(
            child: Column(
              crossAxisAlignment: .center,
              mainAxisAlignment: .center,
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.ev_station,
                          size: 70,
                          color: AppColors.primary,
                        ),
                      ),
                    ),

                    Gap(30),
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Super EV Changing ',
                              color: AppColors.textPrimary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            Gap(10),
                            CustomText(
                              text: '\$0.45/kWh',
                              color: AppColors.primary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),

                        CustomText(
                          text: 'All levels * Priority for members',
                          color: AppColors.textSecondary,
                          fontSize: 10.sp,
                        ),
                        Gap(3),
                        CustomText(
                          text: '12 bays currently open ',
                          color: AppColors.error,
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        //
        BaseCard(
          hight: 120.h,
          width: double.infinity,
          child: Center(
            child: Column(
              crossAxisAlignment: .center,
              mainAxisAlignment: .center,
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.ev_station,
                          size: 70,
                          color: AppColors.primary,
                        ),
                      ),
                    ),

                    Gap(30),
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Super EV Changing ',
                              color: AppColors.textPrimary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            Gap(10),
                            CustomText(
                              text: '\$0.45/kWh',
                              color: AppColors.primary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),

                        CustomText(
                          text: 'All levels * Priority for members',
                          color: AppColors.textSecondary,
                          fontSize: 10.sp,
                        ),
                        Gap(3),
                        CustomText(
                          text: '12 bays currently open ',
                          color: AppColors.error,
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        BaseCard(
          hight: 120.h,
          width: double.infinity,
          child: Center(
            child: Column(
              crossAxisAlignment: .center,
              mainAxisAlignment: .center,
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.ev_station,
                          size: 70,
                          color: AppColors.primary,
                        ),
                      ),
                    ),

                    Gap(30),
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Super EV Changing ',
                              color: AppColors.textPrimary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            Gap(10),
                            CustomText(
                              text: '\$0.45/kWh',
                              color: AppColors.primary,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),

                        CustomText(
                          text: 'All levels * Priority for members',
                          color: AppColors.textSecondary,
                          fontSize: 10.sp,
                        ),
                        Gap(3),
                        CustomText(
                          text: '12 bays currently open ',
                          color: AppColors.error,
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
