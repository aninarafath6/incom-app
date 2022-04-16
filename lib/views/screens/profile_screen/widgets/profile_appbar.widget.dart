import 'package:incom/utils/dimension.dart';
import 'package:incom/views/screens/profile_screen/widgets/profile_content.widget.dart';

import '../../../onboarding_view/onboarding.index.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.getHeight(51),
      backgroundColor: AppColors.primaryColor,
      title: const Text('Profile'),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset('assets/images/home_banner.png'),
            Positioned(
              child: Image.asset('assets/images/Ellipse 38.png'),
              bottom: context.getHeight(38) * -1,
              left: 0,
              right: 0,
            ),
            Positioned(
              top: context.getHeight(15),
              left: 0,
              right: 0,

              // left:
              // bottom: -20,
              // left: context.getWidth(25),
              // right: context.getWidth(25),
              child: const SizedBox(
                width: double.infinity,
                child: ProfileContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
