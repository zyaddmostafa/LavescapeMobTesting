import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';

class OrAndDividers extends StatelessWidget {
  const OrAndDividers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: AppColor.componentsColor, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('OR', style: AppTextStyles.font16MediumGrey),
        ),
        Expanded(child: Divider(color: AppColor.componentsColor, thickness: 1)),
      ],
    );
  }
}
