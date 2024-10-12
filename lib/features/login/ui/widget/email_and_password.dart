import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/widget/my_button.dart';
import '../../../../core/widget/my_text_form_field.dart';
import 'my_divider.dart';
import 'my_not_a_member.dart';
import 'my_login_google.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
          MyTextFormField(
            hintText: 'Email or Phone',
            controller: emailController,
            isObscure: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email or Phone';
              }
              return null;
            },
          ),
          verticalSpace(24),
          MyTextFormField(
            hintText: 'Password',
            controller: passwordController,
            isObscure: isObscure,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Password';
              }
              return null;
            },
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
            onTap: () {
              if (formKey.currentState!.validate()) {}
            },
          ),
          verticalSpace(44.5),
          const MyDivider(),
          verticalSpace(24),
          const MyLoginGoogle(),
          verticalSpace(24),
          const MyNotAMember()
        ],
      ),
    );
  }
}
