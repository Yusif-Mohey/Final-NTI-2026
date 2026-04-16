import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.padding,
  });
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontSize =
        fontSize ??
        (screenWidth > 600
            ? 16
            : screenWidth > 400
            ? 14
            : 12);

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: responsiveFontSize,
          fontWeight: fontWeight,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines ?? 3,
        textAlign: textAlign,
      ),
    );
  }
}
