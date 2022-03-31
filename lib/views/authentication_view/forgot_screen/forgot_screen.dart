import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/forgot_screen/forgot_banner.dart';
import 'package:incom/views/authentication_view/forgot_screen/forgot_footer.dart';
import 'package:incom/views/authentication_view/verify_otp/verify_otp.dart';
import 'package:incom/views/authentication_view/widgets/headline.dart';
import 'package:incom/views/widgets/custom_button.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);
  static const String routeName = '/forgot';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultPaddings,
            vertical: 10,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Headline(
                    size: 40,
                    label: 'Forgot Your\nPassword?',
                  ),
                ),
                SizedBox(height: context.getHeight(10)),
                const ForgotBanner(),
                SizedBox(height: context.getHeight(8)),
                Text(
                  'Check your inbox for the password\nreset link.',
                  style: GoogleFonts.openSans(
                    color: AppColors.brownShade,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(flex: 2),
                CustomButton(
                  label: 'Send OTP',
                  onTap: () => Navigator.of(context).pushNamed(
                    VerifyOtp.routeName,
                  ),
                ),
                const Spacer(),
                const ForgotFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
