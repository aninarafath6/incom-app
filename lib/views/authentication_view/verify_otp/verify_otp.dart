import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
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
                  Text(
                    'Enter the 4 digit OTP',
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 27,
                    ),
                  ),
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
                  const CustomButton(label: 'Verify'),
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

class OtpInput extends StatelessWidget {
  const OtpInput({
    Key? key,
    this.first = false,
    this.last = false,
  }) : super(key: key);
  final bool first, last;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(57, 149, 149, 149),
      ),
      child: Center(
        child: TextField(
          onChanged: (val) {
            if (val.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (val.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          // maxLength: 1,
          textAlign: TextAlign.center,
          showCursor: false,
          readOnly: false,
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.lightPrimaryColor,
                width: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
