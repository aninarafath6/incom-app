import 'package:flutter/material.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/connect_with_brocker/connect_with_broker.dart';
import 'package:incom/views/authentication_view/profile_setup_screen/profile_app_bar.dart';
import 'package:incom/views/authentication_view/widgets/input_box.dart';
import 'package:incom/views/authentication_view/widgets/sub_title.dart';
import 'package:incom/views/widgets/custom_button.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({Key? key}) : super(key: key);
  static const String routeName = '/profileSetup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileAppBar(),
          Expanded(
            flex: 1,
            child: Transform.translate(
              offset: const Offset(0, -100),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultPaddings),
                child: ListView(
                  children: [
                    context.spacing(height: 3),
                    const SubTitle(title: 'Complete your profile'),
                    context.spacing(height: 5),
                    const InputBox(placeholder: 'Name'),
                    const InputBox(placeholder: 'Email ID'),
                    context.spacing(height: 5),
                    CustomButton(
                      label: 'Next',
                      onTap: () => Navigator.of(context).pushNamed(
                        ConnectWithBroker.routeName,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
