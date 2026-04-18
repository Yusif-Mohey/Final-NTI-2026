import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/features/auth/widgets/social_btn.dart';
import 'package:line_icons/line_icons.dart';

class SoicalAuth extends StatelessWidget {
  const SoicalAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialBtn(icon: LineIcons.googleLogo, borderColor: AppColors.primary),
        SocialBtn(icon: LineIcons.facebookF, borderColor: AppColors.primary),
        SocialBtn(icon: LineIcons.twitter, borderColor: AppColors.primary),
      ],
    );
  }
}
