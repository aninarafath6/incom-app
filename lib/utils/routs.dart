import 'package:flutter/material.dart';
import 'package:incom/views/authentication_view/connect_with_brocker/connect_with_broker.dart';
import 'package:incom/views/authentication_view/forgot_screen/forgot_screen.dart';
import 'package:incom/views/authentication_view/profile_setup_screen/profile_setup_screen.dart';
import 'package:incom/views/authentication_view/reset_password/reset_password_screen.dart';
import 'package:incom/views/authentication_view/verify_otp/verify_otp.dart';
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
      case ForgotScreen.routeName:
        return MaterialPageRoute(builder: (context) => const ForgotScreen());
      case VerifyOtp.routeName:
        return MaterialPageRoute(builder: (context) => const VerifyOtp());
      case ResetPassword.routeName:
        return MaterialPageRoute(builder: (context) => const ResetPassword());
      case ProfileSetup.routeName:
        return MaterialPageRoute(builder: (context) => const ProfileSetup());
      case ConnectWithBroker.routeName:
        return MaterialPageRoute(
            builder: (context) => const ConnectWithBroker());
      default:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
    }
  }
}
