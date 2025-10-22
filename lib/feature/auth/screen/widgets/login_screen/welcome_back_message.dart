import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/app_strings.dart';

class WelcomeBackMessage extends StatelessWidget {
  const WelcomeBackMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.welcomeBackTitle,
          style: AppTextStyles.font18SemiBoldBlack,
        ),

        verticalSpace(8),

        const Text(
          AppStrings.welcomeBackSubtitle,
          style: AppTextStyles.font14RegularGrey,
        ),
      ],
    );
  }
}
