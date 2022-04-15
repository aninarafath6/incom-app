import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/views/home_view/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        Expanded(
          flex: 2,
          child: Container(
            color: AppColors.pink,
          ),
        ),
      ],
    );
  }
}
