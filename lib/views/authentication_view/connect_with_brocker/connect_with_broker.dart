import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';

class ConnectWithBroker extends StatelessWidget {
  const ConnectWithBroker({Key? key}) : super(key: key);
  static const routeName = '/connectBroker';

  @override
  Widget build(BuildContext context) {
    double padding = AppSizes.defaultPaddings;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: padding,
            left: padding,
            right: padding,
          ),
          child: Column(
            children: [
              const _AppBar(),
              context.spacing(height: 7),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(padding - 10),
                  decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          'Connect With',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      context.spacing(height: 5),
                      Stack(
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
                                Text('upstox',
                                    style: GoogleFonts.openSans(
                                        color: Colors.black, fontSize: 16)),
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              context.spacing(height: 3),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    'Skip >',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.lightPrimaryColor,
          radius: 40,
        ),
        const Align(
          child: CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.lightPrimaryColor,
          ),
          alignment: Alignment.centerRight,
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppImages.lineVector,
              width: 288,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Align(
            alignment: Alignment.center,
            child: SubTitle(title: 'Connect your broker'),
          ),
        ),
      ],
    );
  }
}
