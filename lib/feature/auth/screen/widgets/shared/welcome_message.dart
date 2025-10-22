import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/app_strings.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.welcomeTitle,
          style: AppTextStyles.font18SemiBoldBlack,
        ),
        verticalSpace(8),
        const Text(
          AppStrings.welcomeSubtitle,
          style: AppTextStyles.font14RegularGrey,
        ),
      ],
    );
  }
}
