import 'package:flutter/material.dart';
import 'routes.dart';
import '../../feature/auth/screen/sign_up_with_phone_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.signupWithPhoneScreen:
        return MaterialPageRoute(builder: (_) => const SignUpWithPhoneScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
