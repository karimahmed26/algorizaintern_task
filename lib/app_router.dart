import 'package:flutter/material.dart';
import 'package:algintern/Login-signup/sign_up_screen.dart';
import 'package:algintern/onboarding/on_boarding.dart';

import 'Login-signup/login_screen.dart';

const String onBoarding = '/';
const String signUp = '/signUp';
const String login = '/login';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        );
      case signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const OnBoarding(),
    );
  }
}
