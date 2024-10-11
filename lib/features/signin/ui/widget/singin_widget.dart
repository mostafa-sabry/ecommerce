import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/widget/my_button.dart';
import '../../../../core/widget/my_text_form_field.dart';
import '../../../login/ui/widget/my_divider.dart';
import '../../../login/ui/widget/my_login_google.dart';
import 'dont_have_an_account.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key,
  });

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(32),
          Text(
            'Join With Us',
            style: FontHelper.font32Dark,
          ),
          Text(
            'Welcome Back, Enjoy Shopping and Offers',
            style: FontHelper.font16Gray,
          ),
          verticalSpace(57),
          const MyTextFormField(
            hintText: 'Name',
            isObscure: false,
          ),
          verticalSpace(24),
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
          verticalSpace(24),
          MyTextFormField(
            hintText: 'Re-Password',
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
            text: 'Register',
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
