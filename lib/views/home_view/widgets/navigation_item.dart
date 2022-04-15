import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    Key? key,
    required this.icon,
    this.active = false,
  }) : super(key: key);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: active ? AppColors.primaryColor : Colors.white,
      radius: 28,
      child: Center(
        child: Icon(icon, color: active ? Colors.white : Colors.black),
      ),
    );
  }
}
