import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  runApp(const LavescapeApp());
}

class LavescapeApp extends StatelessWidget {
  const LavescapeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.signupWithPhoneScreen,
    );
  }
}
