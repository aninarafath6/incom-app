import 'package:flutter/material.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/forgot_screen/forgot_banner.dart';
import 'package:incom/views/authentication_view/widgets/headline.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);
  static const String routeName = '/forgot';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultPaddings),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Headline(
                    size: 40,
                    label: 'Forgot Your\nPassword?',
                  ),
                ),
                SizedBox(height: context.getHeight(10)),
                const ForgotBanner(),
                // const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
