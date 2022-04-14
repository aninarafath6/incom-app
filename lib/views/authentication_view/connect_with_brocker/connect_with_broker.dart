import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/controllers/connect_broker/connect_broker.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/connect_with_brocker/broker_item.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';
import 'package:incom/views/home_view/home_veiw.dart';

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
                  padding: EdgeInsets.symmetric(horizontal: padding - 10),
                  decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: BrokerList(),
                ),
              ),
              context.spacing(height: 3),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(HomeView.routeName);
                    },
                    child: Text(
                      'Skip >',
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: AppColors.primaryColor,
                      ),
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

// ignore: must_be_immutable
class BrokerList extends StatelessWidget {
  BrokerList({
    Key? key,
  }) : super(key: key);

  ConnectBrokerController brokerController = Get.put(ConnectBrokerController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            context.spacing(height: 2),
            Center(
              child: Text(
                'Connect With',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            context.spacing(height: 3),
          ],
        ),
        Flexible(
          child: GetX<ConnectBrokerController>(builder: (context) {
            brokerController.getBrokers();
            return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: brokerController.brokerList.length,
              itemBuilder: (context, index) {
                return BrokerItem(
                  title: brokerController.brokerList[index].name,
                  image: brokerController.brokerList[index].imageURL,
                );
              },
            );
          }),
        ),
      ],
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
