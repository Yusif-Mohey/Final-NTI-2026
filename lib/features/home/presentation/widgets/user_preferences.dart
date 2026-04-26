import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/base_card.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class UserPreferences extends StatelessWidget {
  const UserPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: 'Your Preferences ',
              color: AppColors.textPrimary,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            Spacer(),
            CustomText(
              text: 'Settings ',
              color: AppColors.primary,
              fontSize: 20,
            ),
          ],
        ),
        Gap(10),
        SizedBox(
          height: 130.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BaseCard(
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_car,
                        size: 50,
                        color: AppColors.primary,
                      ),
                      Gap(5),
                      CustomText(
                        text: 'Primary Vehicle',
                        color: AppColors.textPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      Gap(5),
                      CustomText(
                        text: 'Tesla Model . 4B22',
                        color: AppColors.textSecondary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),

              // Spacer(),
              Gap(20),
              BaseCard(
                child: Column(
                  children: [
                    Icon(Icons.star, size: 50, color: AppColors.error),
                    Gap(5),
                    CustomText(
                      text: 'Member Status',
                      color: AppColors.textPrimary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    Gap(5),
                    CustomText(
                      text: 'Platinum Tier',
                      color: AppColors.textSecondary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
