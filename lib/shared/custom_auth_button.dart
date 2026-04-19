import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/shared/custom_text.dart';
// import 'package:nti_final/constants/app_colors.dart';
// import 'package:nti_final/shared/custom_text.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, this.onTap, required this.text});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: CustomText(
            text: text,
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
