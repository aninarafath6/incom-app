import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/models/trade.mode.dart';

class TradeStatus extends StatelessWidget {
  const TradeStatus(
    this.tradeModel,
  );
  final TradeModel tradeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Text(fontSize: 18, data: tradeModel.name!),
        const Spacer(),
        _Text(data: tradeModel.value!),
        const SizedBox(width: 8),
        _Text(
            color: tradeModel.down! ? Colors.red : Colors.green,
            data: tradeModel.status!),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    this.color = Colors.black,
    this.fontSize = 15,
    this.data = 'data',
  }) : super(key: key);
  final Color color;
  final double fontSize;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.openSans(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
