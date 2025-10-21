import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/extention.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_text_styles.dart';

class NewHereOrSignup extends StatelessWidget {
  const NewHereOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: 'New here? ',
              style: AppTextStyles.font14SemiBoldBlack,
            ),
            TextSpan(
              text: 'Sign up!',
              style: AppTextStyles.font14SemiBoldPurple.copyWith(
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.signupWithEmailScreen);
                },
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
