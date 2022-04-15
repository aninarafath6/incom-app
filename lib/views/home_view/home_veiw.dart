import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incom/controllers/tab_bar_controller/tab_bar.controller.dart';
import 'package:incom/views/home_view/screens/home.screen.dart';
import 'package:incom/views/home_view/widgets/bottom_navigation.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  static const String routeName = '/homeScreen';
  final TabBarController controller = Get.put(TabBarController());

  final List<Widget> pages = const [
    Icon(Icons.directions_transit),
    HomeScreen(),
    Icon(Icons.directions_bike),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index],
        onPageChanged: (int index) {
          controller.selectedIndex.value = index;
        },
      ),
    );
  }
}



      // body: Column(
      //   children: [
      //     const HomeAppBar(),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: AppColors.pink,
      //       ),
      //     ),
      //   ],
      // ),