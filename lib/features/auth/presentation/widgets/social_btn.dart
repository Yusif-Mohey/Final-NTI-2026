import 'package:flutter/material.dart';

class SocialBtn extends StatelessWidget {
  const SocialBtn({
    super.key,
    this.bgColor,
    this.onTap,
    required this.icon,
    required this.borderColor,
    this.iconColor,
  });
  final Color? bgColor;
  final Color? iconColor;
  final Color borderColor;
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor ?? Colors.transparent,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: borderColor),
      ),
    );
  }
}
