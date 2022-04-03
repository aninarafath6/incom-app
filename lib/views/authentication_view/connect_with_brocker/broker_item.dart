import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrokerItem extends StatelessWidget {
  const BrokerItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 80),
              Text(
                title,
                style: GoogleFonts.openSans(color: Colors.black, fontSize: 16),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(image),
        ),
      ],
    );
  }
}
