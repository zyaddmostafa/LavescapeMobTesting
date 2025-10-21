import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/helpers/extention.dart';
import '../../../../../core/routing/routes.dart';
import 'auth_methods_card.dart';

class AuthMethodsList extends StatelessWidget {
  final bool isPhoneSignup;
  const AuthMethodsList({super.key, this.isPhoneSignup = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        const AuthMethodsCard(assetName: AppAssets.svgsAuthFacebookIcon),
        const AuthMethodsCard(assetName: AppAssets.svgsAuthGoogleIcon),
        const AuthMethodsCard(assetName: AppAssets.svgsAuthAppleIcon),
        GestureDetector(
          onTap: () {
            isPhoneSignup
                ? context.pushReplacementNamed(Routes.signupWithEmailScreen)
                : context.pushReplacementNamed(Routes.signupWithPhoneScreen);
          },
          child: AuthMethodsCard(
            assetName: isPhoneSignup
                ? AppAssets.svgsAuthEmailIcon
                : AppAssets.svgsAuthPhoneIcon,
          ),
        ),
      ],
    );
  }
}
