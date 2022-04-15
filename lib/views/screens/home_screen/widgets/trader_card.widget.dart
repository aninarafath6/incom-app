import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/models/trader.model.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/widgets/custom_button.dart';

class TraderCard extends StatelessWidget {
  const TraderCard({
    Key? key,
    required this.trader,
  }) : super(key: key);
  final Trader trader;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 20),
      width: context.getWidth(40),
      height: context.getHeight(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: AppColors.primaryColor,
            backgroundImage: AssetImage(trader.dp),
          ),
          const SizedBox(height: 25),
          Text(
            trader.userName,
            style: GoogleFonts.openSans(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          const CustomButton(label: 'Follow', size: 35)
          // Spacer(flex: 2),
        ],
      ),
    );
  }
}
