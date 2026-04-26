import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/services_card_screen.dart';
import 'package:gap/gap.dart';

class GarageServices extends StatelessWidget {
  const GarageServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomText(
            text: 'Garage Services ',
            color: AppColors.textPrimary,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        Gap(10),
        ServicesCardScreen(),
      ],
    );
  }
}
