import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/models/news.model.dart';
import 'package:incom/utils/dimension.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsModel.heading,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 35),
                Text(
                  '${newsModel.date} • ${newsModel.time} min ago',
                  style: GoogleFonts.openSans(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
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
