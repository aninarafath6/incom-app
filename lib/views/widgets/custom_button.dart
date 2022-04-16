import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    this.size = AppSizes.buttonHeight,
    this.inverted = false,
    this.onTap,
  }) : super(key: key);

  final String label;
  final Function()? onTap;
  final double size;
  final bool inverted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.buttonWidth,
      height: size,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: AppSizes.buttonWidth,
          height: size,
          decoration: BoxDecoration(
            color: inverted ? Colors.transparent : AppColors.primaryColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: AppColors.primaryColor,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                color: inverted ? AppColors.primaryColor : AppColors.light,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
