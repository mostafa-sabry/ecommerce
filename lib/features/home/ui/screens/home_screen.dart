import 'package:ecommerce/core/helpers/my_cllipper.dart';
import 'package:flutter/material.dart';

import '../widget/app_bar.dart';
import '../widget/custom_home_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HedersAppBar(),
          ClipPath(
            clipper: MyClipper(),
            child: const CustomHomeBody(),
          ),
        ],
      ),
    );
  }
}
