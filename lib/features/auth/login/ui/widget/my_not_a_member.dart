import 'package:flutter/material.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/fonts.dart';

class MyNotAMember extends StatelessWidget {
  const MyNotAMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not A Member ?',
          style: FontHelper.font14Dark,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.register);
            },
            child: Text(
              "Register Now",
              style: FontHelper.font14Blue,
            ))
      ],
    );
  }
}
