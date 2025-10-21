import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';

class WelcomeBackMessage extends StatelessWidget {
  const WelcomeBackMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Welcome Back', style: AppTextStyles.font18SemiBoldBlack),

        verticalSpace(8),

        const Text(
          'Log in to Explore Unique Experiences or Manage\n Your Own!',
          style: AppTextStyles.font14RegularGrey,
        ),
      ],
    );
  }
}
