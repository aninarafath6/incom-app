import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/widgets/custom_button.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.transparent,
      width: double.infinity,
      // height: context.getHeight(40),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 65,
            backgroundColor: AppColors.lightPrimaryColor,
            backgroundImage: AssetImage('assets/users/user3.png'),
          ),
          const SizedBox(height: 20),
          Text(
            'Jack Jones',
            style: GoogleFonts.openSans(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            '@jackjones',
            style: GoogleFonts.openSans(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis ac pellentesque sem sit mi. Non tincidunt lib',
            style: GoogleFonts.openSans(
              color: Colors.black.withOpacity(.75),
              fontWeight: FontWeight.normal,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          Row(
            children: const [
              Expanded(
                child: CustomButton(
                  label: 'Book session',
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: CustomButton(
                  label: 'Follow',
                  inverted: true,
                ),
              ),
            ],
          )
        ],
      ),
      // radius: 65,
    );
  }
}
