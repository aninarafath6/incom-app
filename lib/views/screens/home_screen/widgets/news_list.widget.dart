import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/controllers/home_controller/home.controller.dart';
import 'package:incom/views/screens/home_screen/widgets/news_card.widget.dart';

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
