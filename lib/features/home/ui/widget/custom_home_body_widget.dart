import 'package:ecommerce/core/helpers/spacing.dart';
import 'package:ecommerce/features/home/ui/widget/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/my_colors.dart';
import '../../../../core/widget/search.dart';

class CustomHomeBody extends StatelessWidget {
  const CustomHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      height: 510,
      color: MyColors.dark,
      child: Column(
        children: [
          const CarouselSliderWidget(),
          verticalSpace(20),
          const SearchWidget(),
          verticalSpace(20),
        ],
      ),
    );
  }
}
