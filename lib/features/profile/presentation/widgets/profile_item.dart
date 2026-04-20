import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icons.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.text,
    required this.icon,
    this.ontap,
  });
  final IconData icon;
  final String text;
  final VoidCallback? ontap;
  // final IconData icon2;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            Icon(icon, size: 30, color: AppColors.primary),
            Gap(20),
            Text(
              text,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 25,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              LineIcons.angleRight,
              // size: 30,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
