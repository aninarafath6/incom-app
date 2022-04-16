import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/login_screen/login_screen.dart';
import 'package:incom/views/authentication_view/widgets/headline.dart';
import 'package:incom/views/authentication_view/widgets/input_box.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';
import 'package:incom/views/widgets/custom_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  static const String routeName = '/resetPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPaddings, vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Headline(size: 40, label: 'Password\nReset'),
                  ),
                  context.spacing(height: 10),
                  Image.asset(
                    AppImages.verifyIcon,
                    width: 140,
                  ),
                  context.spacing(height: 5),
                  const SubTitle(title: 'Enter New Password'),
                  context.spacing(height: 3),
                  const InputBox(
                    placeholder: 'New Password',
                    password: true,
                  ),
                  const InputBox(
                    placeholder: 'Re-enter Password',
                    password: true,
                  ),
                  context.spacing(height: 5),
                  const CustomButton(label: 'Confirm'),
                  context.spacing(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Remember password ? ',
                        style:
                            GoogleFonts.openSans(color: AppColors.brownShade),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(LoginScreen.routeName),
                        child: Text(
                          'Login ',
                          style: GoogleFonts.openSans(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
