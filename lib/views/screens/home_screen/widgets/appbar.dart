import 'package:incom/utils/dimension.dart';
import 'package:incom/views/home_view/widgets/notification_icon.widget.dart';
import 'package:incom/views/onboarding_view/onboarding.index.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false, // Don't show the leading button
      centerTitle: true,

      expandedHeight: context.getHeight(28),
      backgroundColor: AppColors.primaryColor,
      // leading: const SizedBox(),
      pinned: true,
      // snap: true,
      // floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.homeBanner,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 4),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.defaultPaddings),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: context.getWidth(16),
                          backgroundColor: Colors.white,
                          backgroundImage: const AssetImage(
                            AppImages.userAvatar,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Good Morning,\nAnn !",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
      title: Text(
        'Home',
        style: GoogleFonts.openSans(fontWeight: FontWeight.w700),
      ),
      actions: const [
        NotificationIcon(),
      ],
    );
  }
}
//  const HomeAppBar(),
