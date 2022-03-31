import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/views/authentication_view/login_screen/login_screen.dart';
import 'package:incom/views/authentication_view/widgets/sign_up_header.dart';
import 'package:incom/views/widgets/custom_button.dart';

import '../../../constants/app_sizes.dart';
import '../widgets/input_box.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String routeName = '/signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultPaddings),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const SizedBox(height: 25),
                const SignUpHeader(),
                const SizedBox(height: 40),
                Text(
                  'Sign Up',
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
                const PrivacyVerification(),
                const SizedBox(
                  height: 50,
                ),
                const CustomButton(label: 'Sign Up'),
                const SizedBox(
                  height: 35,
                ),
                const Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PrivacyVerification extends StatefulWidget {
  const PrivacyVerification({
    Key? key,
  }) : super(key: key);

  @override
  State<PrivacyVerification> createState() => _PrivacyVerificationState();
}

class _PrivacyVerificationState extends State<PrivacyVerification> {
  late bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            // checkColor: AppColors.primaryColor,
            fillColor: MaterialStateProperty.all(AppColors.primaryColor),
            value: agree,
            onChanged: (val) {
              setState(() {
                agree = val!;
              });
            }),
        Text(
          ' I agree to the  ',
          style: GoogleFonts.openSans(
            color: AppColors.brownShade,
            fontSize: 14,
          ),
        ),
        Text(
          ' Privacy Policy ',
          style: GoogleFonts.openSans(
            color: AppColors.primaryColor,
            fontSize: 14,
          ),
        ),
      ],
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
          'Already have an account?  ',
          style: GoogleFonts.openSans(color: AppColors.brownShade),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName),
          child: Text(
            'Log in ',
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
