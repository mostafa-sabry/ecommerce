import 'package:ecommerce/core/theming/fonts.dart';
import 'package:ecommerce/core/theming/my_colors.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool isObscure;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const MyTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.isObscure,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: MyColors.white,
        hintText: hintText,
        hintStyle: FontHelper.font14Gray,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: MyColors.stroke,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: MyColors.stroke,
          ),
        ),
      ),
    );
  }
}
