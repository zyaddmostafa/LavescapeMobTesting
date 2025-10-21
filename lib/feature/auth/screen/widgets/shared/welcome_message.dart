import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome to Lavescape',
          style: AppTextStyles.font18SemiBoldBlack,
        ),
        verticalSpace(8),
        const Text(
          'Discover Authentic Experiences or Share Your Own—Log In or Sign Up to Get Started!',
          style: AppTextStyles.font14RegularGrey,
        ),
      ],
    );
  }
}
