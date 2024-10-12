import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/fonts.dart';

class DontReceiveCode extends StatelessWidget {
  const DontReceiveCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'don’t receive code?',
          style: FontHelper.font14Dark,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.register);
            },
            child: Text(
              "Resend",
              style: FontHelper.font14Blue,
            ))
      ],
    );
  }
}
