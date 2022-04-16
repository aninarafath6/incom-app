// ignore_for_file: use_key_in_widget_constructors

import 'package:incom/views/onboarding_view/onboarding.index.dart';
import 'package:incom/views/screens/home_screen/widgets/appbar.dart';
import 'package:incom/views/screens/home_screen/widgets/favoraite_traders.widget.dart';
import 'package:incom/views/screens/home_screen/widgets/news_list.widget.dart';
import 'package:incom/views/screens/home_screen/widgets/status_banner.widget.dart';
import 'package:incom/views/widgets/subTitle.widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      slivers: [
        const HomeAppBar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 30),
              const StatusBanner(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPaddings * .60,
                ),
                child: SubTitle2(label: 'Find your favorites traders'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        FavoriteTraders(),
        const NewsHeader(),
        NewsList(),
      ],
    );
  }
}

