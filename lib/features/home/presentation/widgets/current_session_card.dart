import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/base_card.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';
import 'package:gap/gap.dart';

class CurrentSessionCard extends StatelessWidget {
  const CurrentSessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      hight: 300,
      width: double.infinity,
      gradient: [AppColors.primary, AppColors.endGradyPrimary],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextButton(
                autofocus: true,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      //Show Dialog here with the Timer of Sisson
                      return Dialog();
                    },
                  );
                },
                child: Text(
                  'Grand plaza Premium',
                  style: TextStyle(color: AppColors.surface, fontSize: 20),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: 'Remaining',
                    color: AppColors.surface,
                    fontSize: 25,
                  ),
                  Gap(3),
                  CustomText(
                    text: '01:24:08',
                    color: AppColors.surface,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          Gap(3),
          CustomText(
            text: 'Curent Session',
            color: AppColors.surface,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: 'P Station 1',
            color: AppColors.surface,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),

          Gap(30),
          Row(
            children: [
              Expanded(
                child: CustomAppButton(
                  borderRadius: 30,
                  width: 200,
                  btnColor: AppColors.background,
                  onTap: () {},
                  child: Text(
                    'Extend Duration',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Gap(70),
              IconButton(
                autofocus: true,

                onPressed: () {},
                icon: Icon(
                  Icons.location_on,
                  size: 50,
                  color: AppColors.surface,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
