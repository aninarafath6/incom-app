import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/models/trader.model.dart';

class TraderAvatar extends StatelessWidget {
  const TraderAvatar({
    Key? key,
    this.small = false,
    required this.trader,
  }) : super(key: key);
  final Trader trader;
  final bool small;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: small ? 25 : 32,
          backgroundImage: AssetImage(trader.dp),
        ),
        const SizedBox(height: 5),
        Text(
          trader.name,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: small ? 10 : 12,
          ),
        )
      ],
    );
  }
}
