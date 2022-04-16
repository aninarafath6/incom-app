import 'package:incom/utils/dimension.dart';
import 'package:incom/views/authentication_view/widgets/headline.dart';
import 'package:incom/views/authentication_view/widgets/input_box.dart';
import 'package:incom/views/screens/discovery_screen/widgets/traders_discover.widget.dart';

import '../../../onboarding_view/onboarding.index.dart';

class DiscoverAppBar extends StatelessWidget {
  const DiscoverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false, // Don't show the leading button
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 80,
      expandedHeight: context.getHeight(44),
      pinned: true,
      // floating: true,
      centerTitle: false,
      title: const Headline(
        size: 45,
        label: 'Discover',
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.all(AppSizes.defaultPaddings),
          margin: const EdgeInsets.only(top: AppSizes.defaultPaddings + 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Headline(
              //   size: 45,
              //   label: 'Discover',
              // ),
              const SizedBox(height: 30),
              Text(
                'Find your favorite traders and\nfollow them.',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const InputBox(
                placeholder: 'search',
                color: AppColors.pink,
              ),
              TradersDiscover()
            ],
          ),
        ),
      ),
    );
  }
}
