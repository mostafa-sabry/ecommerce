import 'package:ecommerce/core/theming/my_colors.dart';
import 'package:flutter/material.dart';

import '../widget/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: EmailAndPassword(),
        ),
      ),
    );
  }
}
