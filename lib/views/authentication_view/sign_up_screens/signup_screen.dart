import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/views/authentication_view/login_screen/login_screen.dart';
import 'package:incom/views/authentication_view/profile_setup_screen/profile_setup_screen.dart';
import 'package:incom/views/authentication_view/sign_up_screens/sign_up_header.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';
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
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Spacer(),
                const SizedBox(height: 50),
                const SignUpHeader(),
                const SizedBox(height: 50),
               const Align(
                  child:  SubTitle(title: 'Signup'),
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
                const PrivacyVerification(),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  label: 'Sign Up',
                  onTap: () =>
                      Navigator.of(context).pushNamed(ProfileSetup.routeName),
                ),
                const SizedBox(
                  height: 35,
                ),
                const _Footer(),
                Spacer(),
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

class _Footer extends StatelessWidget {
  const _Footer({
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
