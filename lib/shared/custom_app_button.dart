import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/shared/custom_text.dart';
import 'package:gap/gap.dart';
// import 'package:nti_final/constants/app_colors.dart';
// import 'package:nti_final/shared/custom_text.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    this.onTap,
    this.text,
    this.borderRadius,
    this.width,
    this.height,
    this.child,
    this.btnColor,
    this.textColor,
    this.borderColor,
    this.widget,
  });
  final VoidCallback? onTap;
  final String? text;
  final double? borderRadius;
  final double? width;
  final double? height;
  final Widget? child;
  final Color? btnColor, textColor, borderColor;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height ?? 60,
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          color: btnColor ?? AppColors.primary,
          borderRadius: borderRadius == null
              ? BorderRadius.circular(15)
              : BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                child ??
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: text ?? '',
                      color: textColor ?? Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    Gap(20),
                    widget ?? SizedBox.shrink(),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
