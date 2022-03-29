import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.buttonWidth,
      height: AppSizes.buttonHeight,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              label,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                color: AppColors.light,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
