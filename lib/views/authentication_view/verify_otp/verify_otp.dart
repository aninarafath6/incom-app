import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/reset_password/reset_password_screen.dart';
import 'package:incom/views/authentication_view/verify_otp/otp_input.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';
import 'package:incom/views/widgets/custom_button.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key}) : super(key: key);
  static const String routeName = '/verifyOtp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(134, 191, 165, 211),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Image.asset(
                  AppImages.verifyIcon,
                  width: 140,
                ),
              ),
            ),
          ),
          // context.spacing(height: 4),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.defaultPaddings),
              child: Column(
                children: [
                  const SubTitle(title: 'Enter the 4 digit OTP'),
                  context.spacing(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment
                    children: const [
                      OtpInput(first: true),
                      OtpInput(),
                      OtpInput(),
                      OtpInput(last: true),
                    ],
                  ),
                  context.spacing(height: 5),
                  CustomButton(
                    label: 'Verify',
                    onTap: () => Navigator.of(context).pushNamed(
                      ResetPassword.routeName,
                    ),
                  ),
                  context.spacing(height: 5),
                  Text(
                    'Resend OTP',
                    style: GoogleFonts.openSans(
                      color: AppColors.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
