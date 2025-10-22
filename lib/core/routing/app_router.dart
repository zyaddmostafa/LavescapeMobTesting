import 'package:flutter/material.dart';
import '../../feature/auth/screen/finish_signing_up_screen.dart';
import '../../feature/auth/screen/guest_profile_created_screen.dart';
import '../../feature/auth/screen/login_screen.dart';
import '../../feature/auth/screen/otp_verification_screen.dart';
import '../../feature/auth/models/otp_verification_args.dart';
import '../../feature/auth/screen/sign_up_with_email.dart';
import '../../feature/explore/model/search_result_arg.dart';
import '../../feature/explore/screens/explore_map_view_screen.dart';
import '../../feature/explore/screens/explore_screen.dart';
import '../../feature/explore/screens/search_result.dart';
import '../../feature/explore/screens/search_screen.dart';
import 'routes.dart';
import '../../feature/auth/screen/sign_up_with_phone_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.signupWithPhoneScreen:
        return MaterialPageRoute(builder: (_) => const SignUpWithPhoneScreen());

      case Routes.otpVerificationScreen:
        final args = arguments as OtpVerificationArgs;

        return MaterialPageRoute(
          builder: (_) => OtpVerificationScreen(
            phoneNumber: args.phoneNumber,
            email: args.email,
            isPhoneSignup: args.isPhoneSignup,
          ),
        );

      case Routes.finishSigningupScreen:
        return MaterialPageRoute(builder: (_) => const FinishSigningUpScreen());

      case Routes.guestProfileCreatedScreen:
        return MaterialPageRoute(
          builder: (_) => const GuestProfileCreatedScreen(),
        );

      case Routes.signupWithEmailScreen:
        return MaterialPageRoute(builder: (_) => const SignUpWithEmail());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.exploreScreen:
        return MaterialPageRoute(builder: (_) => const ExploreScreen());

      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.searchResultScreen:
        final args = arguments as SearchResultArg;

        return MaterialPageRoute(
          builder: (_) => SearchResult(searchResultArguments: args),
        );

      case Routes.exploreMapViewScreen:
        final args = arguments as SearchResultArg;

        return MaterialPageRoute(
          builder: (_) => ExploreMapViewScreen(searchResultArguments: args),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
