import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/views/authentication_view/login_screen/login_screen.dart';

class ForgotFooter extends StatelessWidget {
  const ForgotFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Remember Password? ',
          style: GoogleFonts.openSans(color: AppColors.brownShade),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
          child: Text(
            'Login ',
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
