import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/views/home_view/widgets/notification_icon.widget.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                AppImages.homeBanner,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: AppSizes.defaultPaddings + 10,
                left: AppSizes.defaultPaddings,
                right: AppSizes.defaultPaddings,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const NotificationIcon(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: AppSizes.defaultPaddings / 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              AppImages.userAvatar,
                            ),
                          ),
                          // SizedBox(width: 20),
                          Text(
                            "Good Morning,\nAnn !",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
