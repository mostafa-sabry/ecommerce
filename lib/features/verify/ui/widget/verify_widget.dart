import 'package:ecommerce/features/verify/ui/widget/dont_receive_code.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/my_colors.dart';
import '../../../../core/widget/my_button.dart';
import '../../../../core/widget/my_text_form_field.dart';

class VerifyBodyWidget extends StatelessWidget {
  const VerifyBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(32),
        Text(
          'Verify Your Identity',
          style: FontHelper.font32Dark,
        ),
        Text(
          "We've sent a verification code to *******32@gmail.com",
          style: FontHelper.font16Gray,
        ),
        verticalSpace(32),
        Center(
          child: Image.asset('assets/logo.png'),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Walter Wear',
            style: FontHelper.font24Dark,
          ),
        ),
        verticalSpace(32),
        MyTextFormField(
          hintText: 'Enter Code',
          isObscure: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Code';
            }
            return null;
          },
        ),
        verticalSpace(10),
        const DontReceiveCode(),
        verticalSpace(26),
        MyButton(
          text: 'Continue',
          style: FontHelper.font18Gray2,
          color: MyColors.gray,
          onTap: () {},
        ),
        verticalSpace(220),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Wrong Email',
            style: FontHelper.font12Blue,
          ),
        ),
      ],
    );
  }
}
