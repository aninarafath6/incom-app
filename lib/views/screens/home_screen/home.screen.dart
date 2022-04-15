// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/views/home_view/widgets/appbar.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HomeAppBar(),
        Expanded(
          flex: 2,
          child: Container(
            height: double.infinity,
            padding: const EdgeInsets.symmetric(
                // horizontal: AppSizes.defaultPaddings * .60,
                ),
            color: AppColors.pink,
            child: CustomScrollView(
              slivers: [
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
            ),
          ),
        ),
      ],
    );
  }
}

