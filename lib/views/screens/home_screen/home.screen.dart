// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/home_view/widgets/notification_icon.widget.dart';
import 'package:incom/views/onboarding_view/onboarding.index.dart';
import 'package:incom/views/screens/home_screen/widgets/favoraite_traders.widget.dart';
import 'package:incom/views/screens/home_screen/widgets/news_list.widget.dart';
import 'package:incom/views/screens/home_screen/widgets/status_banner.widget.dart';
import 'package:incom/views/widgets/subTitle.widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      slivers: [
        SliverAppBar(
          expandedHeight: context.getHeight(28),
          backgroundColor: AppColors.primaryColor,
          leading: const SizedBox(),
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.homeBanner,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 4),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.defaultPaddings),
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
                      ),
                    ),
                    const Spacer(),
                  ],
                )
              ],
            ),
          ),
          title: Text(
            'Home',
            style: GoogleFonts.openSans(fontWeight: FontWeight.w700),
          ),
          actions: const [
            NotificationIcon(),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 30),
              const StatusBanner(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPaddings * .60,
                ),
                child: SubTitle2(label: 'Find your favorites traders'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        FavoriteTraders(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPaddings * .60,
                ),
                child: Row(
                  children: [
                    const SubTitle2(label: 'News'),
                    const Spacer(),
                    Text(
                      'See More',
                      style: GoogleFonts.openSans(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        NewsList(),
      ],
    );
  }
}
//  const HomeAppBar(),
