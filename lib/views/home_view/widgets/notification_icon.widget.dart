import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: -3,
            top: -2,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.redAccent,
              child: Text(
                '1',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
