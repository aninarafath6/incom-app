import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/models/news.model.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/widgets/title_with_info.widget.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.newsModel,
  }) : super(key: key);
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.defaultPaddings),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: TitleWithInfo(information: newsModel.information),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              width: context.getWidth(25),
              height: context.getWidth(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                newsModel.imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
