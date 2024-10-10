import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset('assets/logo.png')),
        verticalSpace(20),
        Text(
          'Walter Wear',
          style: FontHelper.font24white,
        ),
        Text(
          'Thread Reverie Boutique',
          style: FontHelper.font16white,
        ),
      ],
    );
  }
}
