import 'package:flutter/material.dart';
import 'package:incom/controllers/discover_controller/discover.controller.dart';
import 'package:incom/views/screens/discovery_screen/widgets/post_card.widget.dart';
import 'package:incom/views/screens/profile_screen/widgets/profile_appbar.widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          ProfileAppBar(),
          _ProfilePosts(),
        ],
      ),
    );
  }
}

class _ProfilePosts extends StatelessWidget {
  const _ProfilePosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return PostCard(
            post: DiscoverController().posts[index],
          );
        },
        childCount: DiscoverController().posts.length,
      ),
    );
  }
}
