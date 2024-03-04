import 'package:doctor_appointment/presintion_layer/screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../../presintion_layer/screens/forgot_password.dart';
import '../../presintion_layer/screens/log_in_screen.dart';
import '../../presintion_layer/screens/splash_screen.dart';

class AppRoute {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgotPassword';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.splash:
        return MaterialPageRoute(builder: (context) => const IntroScreen());
      case AppRoute.login:
        return MaterialPageRoute(builder: (context) => const LogInScreen());
      case AppRoute.register:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());

      case AppRoute.forgotPassword:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text('no route defined')),
                ));
    }
  }
}
