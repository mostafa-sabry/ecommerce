import 'package:ecommerce/core/theming/my_colors.dart';
import 'package:flutter/material.dart';

import '../theming/fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: FontHelper.font16Gray,
        prefixIcon: const Icon(
          Icons.search,
          color: MyColors.gray,
          size: 35,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.stroke,
          ),
        ),
      ),
    );
  }
}
