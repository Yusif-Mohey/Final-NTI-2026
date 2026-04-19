import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/features/auth/Notifiication/enter_location.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text.dart';
import 'package:gap/gap.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 150 ,left: 30 ,right: 30),
            // child:
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.location_on,
                size: 80,
                color: AppColors.primary,
              ),
            ),
            // ),
            Gap(50),
            CustomText(
              text: 'What is Your Location ?',
              color: AppColors.primaryDark,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            Gap(15),
            CustomText(
              text:
                  'We need to know Your location in order to suggest nearby services',
              color: AppColors.textSecondary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            Gap(100),
            CustomAppButton(
              text: 'Allow Location Access',
              textColor: AppColors.surface,
              onTap: () {},
              borderColor: AppColors.primary,
            ),
            Gap(30),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnterLocation()),
                );
              },
              child: Text(
                'Enter Location Manually',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
