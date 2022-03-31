import 'package:flutter/material.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultPaddings - 20,
              vertical: AppSizes.defaultPaddings * 1.5,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          Image.asset(AppImages.profileAppBar, fit: BoxFit.cover),
          Center(
            child: Image.asset(
              AppImages.avatar,
              width: 170,
            ),
          ),
        ],
      ),
    );
  }
}
