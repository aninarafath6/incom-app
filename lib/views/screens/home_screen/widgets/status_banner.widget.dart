import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/models/trade.mode.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/screens/home_screen/widgets/trade_status.widget.dart';

class StatusBanner extends StatelessWidget {
  const StatusBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.defaultPaddings * .60,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.defaultPaddings * .90,
        vertical: AppSizes.defaultPaddings * .60,
      ),
      width: double.infinity,
      height: context.getHeight(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.lightPrimaryColor.withOpacity(.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(2, 4), // changes position of shadow
          ),
        ],
        color: AppColors.light,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TradeStatus(
            TradeModel(
              name: 'NIFTY',
              value: '17000',
              status: '(+1.85%)',
            ),
          ),
          const Divider(thickness: 1),
          TradeStatus(
            TradeModel(
              name: 'BANK NIFTY',
              value: '34000',
              status: '(-1.35%)',
              down: true,
            ),
          ),
          const Divider(thickness: 1),
          TradeStatus(
            TradeModel(
              name: 'SENSEX',
              value: '100000',
              status: '(+2.31%)',
            ),
          ),
        ],
      ),
    );
  }
}
