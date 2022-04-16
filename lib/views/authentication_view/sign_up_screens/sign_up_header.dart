import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/utils/dimension.dart';

import '../../../constants/app_images.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: const Offset(-70, 6),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage(
                AppImages.login2,
              ),
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(97),
                    color: Color.fromARGB(227, 203, 192, 212),
                  ),
                ),
              ),
              radius: context.getWidth(20),
            ),
          ),
          Transform.translate(
            offset: const Offset(58, -40),
            child: CircleAvatar(
              backgroundColor: AppColors.lightPrimaryColor,
              backgroundImage: const AssetImage(
                AppImages.signup1,
              ),
              child: Container(
                  decoration: BoxDecoration(
                color: Color.fromARGB(139, 136, 96, 166),
                borderRadius: BorderRadius.circular(125.5),
              )),
              radius: context.getWidth(25),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 80),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.16),
                  )
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Center(
                  child: Image.asset(
                    AppImages.slogo,
                  ),
                ),
                radius: context.getWidth(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
