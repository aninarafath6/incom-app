import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.primaryColor,
          child: Image.asset(
            'assets/images/home_banner.png',
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 150,
          right: 0,
          left: 0,
          child: Image.asset(
            'assets/images/Ellipse 38.png',
          ),
        ),
      ],
    );
  }
}
