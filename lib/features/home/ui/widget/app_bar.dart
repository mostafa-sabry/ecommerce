import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/my_colors.dart';

class HedersAppBar extends StatelessWidget {
  const HedersAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 110,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: MyColors.dark,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/grid.svg'),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/star-1.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/settings.svg'),
          ),
        ],
      ),
    );
  }
}
