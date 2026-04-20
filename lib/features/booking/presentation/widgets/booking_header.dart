import 'package:flutter/material.dart';
import '../../../../Core/Theme/app_colors.dart';
import 'package:gap/gap.dart';

class BookingHeader extends StatelessWidget {
  const BookingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              Icons.local_parking_rounded,
              color: AppColors.primary,
              size: 22,
            ),
            Gap(6),
            Text(
              'Garage',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
                fontSize: 17,
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.12),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(
            Icons.notifications_none_rounded,
            color: AppColors.primaryDark,
            size: 20,
          ),
        ),
      ],
    );
  }
}
