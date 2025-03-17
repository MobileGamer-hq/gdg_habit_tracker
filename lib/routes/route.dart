import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker/screens/landing_screen.dart';
import 'package:gdg_habit_tracker/screens/sign_in_screen.dart';
import 'package:gdg_habit_tracker/screens/sign_up_screen.dart';

class AppRoutes {
  //
  static const String landing = '/';
  static const String signup = '/signup';
  static const String signin = '/signin';

  static Map<String, WidgetBuilder> routes = {
    landing: (context) => const LandingScreen(),
    signup: (context) => const SignUpScreen(),
    signin: (context) => const SignInScreen(),
  };
}
