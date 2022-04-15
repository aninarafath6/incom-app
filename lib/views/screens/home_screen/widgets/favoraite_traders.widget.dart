import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/controllers/home_controller/home.controller.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/screens/home_screen/widgets/trader_card.widget.dart';

class FavoriteTraders extends StatelessWidget {
  FavoriteTraders({
    Key? key,
  }) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(
          left: AppSizes.defaultPaddings * .60,
        ),
        height: context.getHeight(25),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeController.favoritesTrader.length,
          itemBuilder: (context, index) {
            return TraderCard(
              trader: homeController.favoritesTrader[index],
            );
          },
        ),
      ),
    );
  }
}
