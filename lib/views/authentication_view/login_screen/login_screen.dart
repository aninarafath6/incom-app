import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/views/authentication_view/sign_up_screens/signup_screen.dart';
import 'package:incom/views/widgets/custom_button.dart';

import '../widgets/input_box.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultPaddings),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Headline(label: 'Welcome', color: true, size: 45),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Headline(label: 'Back', size: 30),
                  ),
                  const SizedBox(height: 25),
                  const LoginHeader(),
                  const SizedBox(height: 40),
                  Text(
                    'Login',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 27,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const InputBox(
                    placeholder: 'Mobile Number',
                  ),
                  const InputBox(
                    placeholder: 'Password',
                    password: true,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      ' Forgot Password? ',
                      style: GoogleFonts.openSans(
                        color: AppColors.primaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomButton(label: 'Login'),
                  const SizedBox(
                    height: 35,
                  ),
                  const Footer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
