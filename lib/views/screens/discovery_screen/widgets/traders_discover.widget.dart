import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/controllers/home_controller/home.controller.dart';
import 'package:incom/views/screens/discovery_screen/widgets/trader_avatar.widget.dart';

class TradersDiscover extends StatelessWidget {
  TradersDiscover({
    Key? key,
  }) : super(key: key);

  final HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.defaultPaddings * .30),
      margin: const EdgeInsets.only(
        // horizontal: AppSizes.defaultPaddings,
        top: 10,
      ),
      width: double.infinity,
      height: 112,
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          4,
          (index) => TraderAvatar(
            trader: homeController.favoritesTrader[index],
          ),
        ),
      ),
    );
  }
}
