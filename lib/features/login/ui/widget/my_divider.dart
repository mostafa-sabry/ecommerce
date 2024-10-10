import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 150,
            child: Divider(
              thickness: 1,
            ),
          ),
          horizontalSpace(10),
          Align(
            alignment: Alignment.center,
            child: Text(
              'or',
              style: FontHelper.font14Dark,
            ),
          ),
          horizontalSpace(10),
          const SizedBox(
            width: 150,
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
