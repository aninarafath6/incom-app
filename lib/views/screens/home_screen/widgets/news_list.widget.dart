import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incom/controllers/home_controller/home.controller.dart';
import 'package:incom/views/onboarding_view/onboarding.index.dart';
import 'package:incom/views/screens/home_screen/widgets/news_card.widget.dart';
import 'package:incom/views/widgets/subTitle.widgets.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
    );
  }
}

class NewsList extends StatelessWidget {
  NewsList({
    Key? key,
  }) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultPaddings * .60,
        ),
        margin: const EdgeInsets.only(
          bottom: AppSizes.defaultPaddings,
        ),
        child: Column(
          children: List.generate(
            homeController.newses.length,
            (index) => NewsCard(
              newsModel: homeController.newses[index],
            ),
          ),
        ),
      ),
    );
  }
}
