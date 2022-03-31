import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/views/authentication_view/forgot_screen/forgot_screen.dart';
import 'package:incom/views/authentication_view/widgets/headline.dart';
import 'package:incom/views/authentication_view/sign_up_screens/signup_screen.dart';
import 'package:incom/views/widgets/custom_button.dart';

import '../widgets/input_box.dart';
import 'login_header.dart';

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
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Headline(label: 'Back', size: 30),
                    ),
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
                    keyboard: TextInputType.number,
                  ),
                  const InputBox(
                    placeholder: 'Password',
                    password: true,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(ForgotScreen.routeName),
                      child: Text(
                        ' Forgot Password? ',
                        style: GoogleFonts.openSans(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                        ),
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
