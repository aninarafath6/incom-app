import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/controllers/tab_bar_controller/tab_bar.controller.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    Key? key,
  }) : super(key: key);
  final TabBarController controller = Get.put(TabBarController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        onTap: (int index) {
          controller.selectedIndex.value = index;
          controller.nextPage(index);
        },
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: AppColors.primaryColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_rounded),
              label: "Discovery"),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile",
          ),
        ],
      );
    });
  }
}
