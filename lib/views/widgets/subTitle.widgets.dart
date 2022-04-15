import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_sizes.dart';

class SubTitle2 extends StatelessWidget {
  const SubTitle2({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
