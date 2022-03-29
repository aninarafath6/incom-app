import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';
import 'package:incom/views/onboarding_view/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Income',
      home: const OnboardingView(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.light,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
