import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController {
  RxInt selectedIndex = 1.obs;
  PageController pageController = PageController(initialPage: 1);

  void setIndex(int index) {
    selectedIndex.value = index;
    nextPage(index);
  }

  void nextPage(index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
  }

  List<IconData> icons = const [
    Icons.local_fire_department_rounded,
    Icons.home_rounded,
    Icons.person_rounded,
  ];
}
