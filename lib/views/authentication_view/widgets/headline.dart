import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';

class Headline extends StatelessWidget {
  const Headline({
    Key? key,
    required this.size,
    this.color = false,
    required this.label,
  }) : super(key: key);
  final String label;
  final bool color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.openSans(
        color: color ? AppColors.primaryColor : Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: size,
      ),
    );
  }
}
