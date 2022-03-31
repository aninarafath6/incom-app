import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/views/authentication_view/sign_up_screens/signup_screen.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account? ',
          style: GoogleFonts.openSans(color: AppColors.brownShade),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(SignUpScreen.routeName),
          child: Text(
            'Sign Up ',
            style: GoogleFonts.openSans(
              color: AppColors.primaryColor,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
