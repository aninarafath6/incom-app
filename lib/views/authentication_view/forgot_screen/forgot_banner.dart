import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_images.dart';

class ForgotBanner extends StatelessWidget {
  const ForgotBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          radius: 100,
          backgroundImage: const AssetImage(AppImages.forgotVector),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(141, 207, 174, 245),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image.asset(
                AppImages.msgIcon,
                width: 75,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Message Sent!',
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
