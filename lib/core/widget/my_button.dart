import 'package:flutter/material.dart';

import '../theming/fonts.dart';
import '../theming/my_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 62,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: MyColors.myApp,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: FontHelper.font18White,
          ),
        ),
      ),
    );
  }
}
