import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/authentication_view/screens/login_screen.dart';
import '../views/onboarding_view/onboarding_screen.dart';

class Routes {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
    }
  }
}
