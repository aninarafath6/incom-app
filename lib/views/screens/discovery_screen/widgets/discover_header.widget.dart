import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/views/authentication_view/widgets/headline.dart';
import 'package:incom/views/authentication_view/widgets/input_box.dart';

class DiscoverHeader extends StatelessWidget {
  const DiscoverHeader({
    Key? key,
  }) : super(key: key);

  static double padding = AppSizes.defaultPaddings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: padding,
        left: padding,
        right: padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Headline(
            size: 45,
            label: 'Discover',
          ),
          const SizedBox(height: 30),
          Text(
            'Find your favorite traders and\nfollow them.',
            style: GoogleFonts.openSans(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          const InputBox(
            placeholder: 'search',
            color: AppColors.pink,
          ),
        ],
      ),
    );
  }
}
