import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/authentication_view/login_screen/login_screen.dart';
import '../views/authentication_view/sign_up_screens/signup_screen.dart';
import '../views/onboarding_view/onboarding_screen.dart';

class Routes {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      default:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
    }
  }
}
