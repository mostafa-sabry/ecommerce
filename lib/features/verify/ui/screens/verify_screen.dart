import 'package:ecommerce/core/theming/my_colors.dart';
import 'package:flutter/material.dart';

import '../widget/verify_widget.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: VerifyBodyWidget(),
        ),
      ),
    );
  }
}
