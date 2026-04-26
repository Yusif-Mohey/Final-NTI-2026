import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/base_card.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';
import 'package:gap/gap.dart';

class ValetUpgradeCard extends StatelessWidget {
  const ValetUpgradeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      pagging: EdgeInsets.all(30),
      hight: 300,
      width: double.infinity,
      gradient: [Colors.grey.shade500, Colors.grey.shade300],
      child: Column(
        children: [
          CustomText(
            text: 'Valet Upgrade',
            color: AppColors.textPrimary,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: 'Upgrade your current stay',
            color: Colors.black87,
            fontSize: 25,
          ),
          CustomText(
            text: 'to Full Valet service for just \$15 .',
            color: Colors.black87,
            fontSize: 25,
          ),
          Gap(50),
          CustomAppButton(
            onTap: () {},
            btnColor: Colors.grey.shade700,
            borderRadius: 50,
            width: 300,
            text: 'Upgrade now',
            textColor: AppColors.surface,
          ),
        ],
      ),
    );
  }
}
