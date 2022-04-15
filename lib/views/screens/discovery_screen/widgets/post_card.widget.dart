import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/controllers/home_controller/home.controller.dart';
import 'package:incom/models/post.model.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/screens/discovery_screen/widgets/trader_avatar.widget.dart';
import 'package:incom/views/widgets/title_with_info.widget.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final double padding = AppSizes.defaultPaddings;
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.pink,
      height: context.getHeight(35),
      padding: EdgeInsets.all(padding * .50),
      child: Column(
        children: [
          Container(
            height: context.getHeight(22),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image:  DecorationImage(
                image: AssetImage(
                 post.imageURL,
                ),
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: TraderAvatar(
                  trader: HomeController().favoritesTrader[0],
                  small: true,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: TitleWithInfo(
                  smallSpacing: true,
                  information:post.information,
                ),
              ),
            ],
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
