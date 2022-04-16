import 'package:incom/views/onboarding_view/onboarding.index.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.all(AppSizes.defaultPaddings),
                child: Image.asset(
                  AppImages.logo3x,
                  width: 300,
                  height: 99,
                  // scale: 3,
                ),
              ),
              const Spacer(flex: 1),
              const SizedBox(height: 50),
              CustomButton(
                label: 'Get Started',
                onTap: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
              ),
              const Spacer(flex: 2),
              Container(
                margin: EdgeInsets.only(
                  bottom:
                      Theme.of(context).platform == TargetPlatform.iOS ? 0 : 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Made in Kerala with ',
                      style:
                          GoogleFonts.openSans(color: AppColors.primaryColor),
                    ),
                    SvgPicture.asset(AppImages.hartSvg),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
