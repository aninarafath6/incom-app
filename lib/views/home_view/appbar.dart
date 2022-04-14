import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';

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
                    Align(
                      alignment: Alignment.centerRight,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Colors.black,
                            ),
                          ),
                          Positioned(
                            right: -3,
                            top: -2,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.redAccent,
                              child: Text(
                                '1',
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: AppSizes.defaultPaddings),
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
