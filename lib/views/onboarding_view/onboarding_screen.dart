import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/views/authentication_view/screens/login_screen.dart';

import '../widgets/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.all(AppSizes.defaultPaddings),
                child: Image.asset(
                  AppImages.logo3x,
                  width: 300,
                  height: 99,
                  // scale: 3,
                ),
              ),
              const Spacer(flex: 2),
              CustomButton(
                label: 'Get Started',
                onTap: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
              ),
              const Spacer(flex: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Made in Kerala with ',
                    style: GoogleFonts.openSans(color: AppColors.primaryColor),
                  ),
                  SvgPicture.asset(AppImages.hartSvg),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
