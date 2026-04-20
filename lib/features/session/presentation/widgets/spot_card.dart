import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:gap/gap.dart';

class SpotCard extends StatelessWidget {
  const SpotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 10),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.location_on, color: AppColors.primary),
          Gap(10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Grand Plaza Premium",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Gap(4),
                Text(
                  "Level 4, Slot D-12",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
