import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/widget/my_button.dart';
import '../../../../core/widget/my_text_form_field.dart';
import 'my_divider.dart';
import 'my_have_dont_an_account.dart';
import 'my_login_google.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(32),
          Text(
            'Welcome',
            style: FontHelper.font32Dark,
          ),
          Text(
            'Welcome Back, Enjoy Shopping and Offers',
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
          verticalSpace(50),
          const MyTextFormField(
            hintText: 'Email or Phone',
            isObscure: false,
          ),
          verticalSpace(24),
          MyTextFormField(
            hintText: 'Password',
            isObscure: isObscure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: isObscure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
          ),
          verticalSpace(10),
          Text(
            'Forget you password ?',
            style: FontHelper.font12Blue,
          ),
          verticalSpace(16),
          MyButton(
            text: 'Login',
            onTap: () {},
          ),
          verticalSpace(44.5),
          const MyDivider(),
          verticalSpace(24),
          const MyLoginGoogle(),
          verticalSpace(24),
          const DontHaveAnAccount()
        ],
      ),
    );
  }
}
