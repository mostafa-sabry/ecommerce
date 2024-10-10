import 'package:flutter/material.dart';

import '../theming/fonts.dart';
import '../theming/my_colors.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool isObscure;
  final TextEditingController? controller;

  const MyTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.isObscure,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
