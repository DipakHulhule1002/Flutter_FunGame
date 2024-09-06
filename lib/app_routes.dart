// lib/app_routes.dart

import 'package:flutter/material.dart';
import 'Screens/signin_screen.dart';
import 'Screens/signup_screen.dart';

class AppRoutes {
  static const String signin = '/';
  static const String signup = '/signup';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signin:
        return MaterialPageRoute(builder: (_) => SigninScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      default:
        return MaterialPageRoute(builder: (_) => SigninScreen());
    }
  }
}
