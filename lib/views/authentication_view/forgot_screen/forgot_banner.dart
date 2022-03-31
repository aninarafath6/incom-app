import 'package:flutter/material.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';

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
        const SubTitle(title: 'Message Sent!'),
      ],
    );
  }
}
