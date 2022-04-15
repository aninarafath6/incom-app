// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:incom/constants/app_sizes.dart';
import 'package:incom/controllers/discover_controller/discover.controller.dart';
import 'package:incom/controllers/home_controller/home.controller.dart';
import 'package:incom/views/screens/discovery_screen/widgets/discover_header.widget.dart';
import 'package:incom/views/screens/discovery_screen/widgets/post_card.widget.dart';
import 'package:incom/views/screens/discovery_screen/widgets/traders_discover.widget.dart';

class DiscoveryScreen extends StatelessWidget {
  DiscoveryScreen({Key? key}) : super(key: key);
  DiscoverController discoverController = DiscoverController();

  @override
  Widget build(BuildContext context) {
    const padding = AppSizes.defaultPaddings;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DiscoverHeader(),
              Expanded(
                child: ListView.builder(
                  itemCount: discoverController.posts.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return TradersDiscover(homeController: HomeController());
                    }
                    return PostCard(
                      post: discoverController.posts[0],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// const PostCard(padding: padding)