import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    Key? key,
    required this.placeholder,
    this.password = false,
  }) : super(key: key);
  final String placeholder;
  final bool password;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: AppColors.inputColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: password
                ? const Icon(Icons.visibility_outlined)
                : const SizedBox(),
            border: InputBorder.none,
            hintText: placeholder,
            hintStyle: GoogleFonts.openSans(
              color: AppColors.brownShade,
            ),
          ),
        ),
      ),
    );
  }
}
