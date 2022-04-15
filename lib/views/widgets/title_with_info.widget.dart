import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/models/info.model.dart';
import 'package:incom/models/news.model.dart';
import 'package:incom/models/post.model.dart';

class TitleWithInfo extends StatelessWidget {
  const TitleWithInfo({
    Key? key,
    this.smallSpacing = false,
    required this.information,
  }) : super(key: key);

  final Info information;
  final bool smallSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          information.heading,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: smallSpacing ? 8 : 35),
        Text(
          '${information.date} • ${information.time} min ago',
          style: GoogleFonts.openSans(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
