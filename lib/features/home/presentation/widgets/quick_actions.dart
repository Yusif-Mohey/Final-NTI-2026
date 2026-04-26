import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.local_parking,
                  size: 30,
                  color: AppColors.primary,
                ),
              ),
            ),
            CustomText(
              text: 'My Spot',
              color: AppColors.textPrimary,
              fontSize: 20,
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.calendar_today,
                  size: 30,
                  color: AppColors.primary,
                ),
              ),
            ),
            CustomText(
              text: 'Reservations',
              color: AppColors.textPrimary,
              fontSize: 20,
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.credit_card,
                  size: 30,
                  color: AppColors.primary,
                ),
              ),
            ),
            CustomText(
              text: 'Payments',
              color: AppColors.textPrimary,
              fontSize: 20,
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.support_agent,
                  size: 30,
                  color: AppColors.primary,
                ),
              ),
            ),
            CustomText(
              text: 'Concierge',
              color: AppColors.textPrimary,
              fontSize: 20,
            ),
          ],
        ),
      ],
    );
  }
}
