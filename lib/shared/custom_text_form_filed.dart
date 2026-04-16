import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
// import 'package:nti_final/constants/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.onTapPasswordView,
    this.validator,

    required this.obscurePassword,
    // this.label,
    // required this.sufixx,
  });
  // final sufixx;
  // final String? label;
  final String hintText;
  bool obscurePassword = false;
  final TextEditingController? controller;
  final void Function()? onTapPasswordView;
  final FormFieldValidator<String>? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      cursorColor: AppColors.primary,
      obscureText:
          widget.hintText.toLowerCase() == 'password' ||
              widget.hintText.toLowerCase() == 'confirm password'
          ? widget.obscurePassword
          : false,
      decoration: InputDecoration(
        filled: true,
        suffixIcon:
            widget.hintText.toLowerCase() == 'password' ||
                widget.hintText.toLowerCase() == 'confirm password'
            ? IconButton(
                onPressed: () {
                  if (widget.onTapPasswordView != null) {
                    widget.onTapPasswordView!();
                  } else {
                    setState(() {
                      widget.obscurePassword = !widget.obscurePassword;
                    });
                  }
                },
                icon: Icon(
                  widget.obscurePassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.primary,
                ),
              )
            : null,
        fillColor: Colors.white,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
