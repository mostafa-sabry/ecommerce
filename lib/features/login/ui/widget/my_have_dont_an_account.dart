import 'package:flutter/material.dart';

import '../../../../core/theming/fonts.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: FontHelper.font14Dark,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Register Now",
              style: FontHelper.font14Blue,
            ))
      ],
    );
  }
}
