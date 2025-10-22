import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import 'round_counter_button.dart';

class GuestRow extends StatelessWidget {
  final String label;
  final String subtitle;
  final int count;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;
  final bool canDecrement;

  const GuestRow({
    super.key,
    required this.label,
    required this.subtitle,
    required this.count,
    required this.onDecrement,
    required this.onIncrement,
    this.canDecrement = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: AppTextStyles.font16RegularLabelColor),
            verticalSpace(4),
            Text(subtitle, style: AppTextStyles.font12RegularGrey),
          ],
        ),
        Row(
          children: [
            RoundCounterButton(
              icon: Icons.remove,
              onPressed: onDecrement,
              enabled: canDecrement,
            ),
            horizontalSpace(14),
            SizedBox(
              width: 30.w,
              child: Text(
                '$count',
                textAlign: TextAlign.center,
                style: AppTextStyles.font16MediumBlack,
              ),
            ),
            horizontalSpace(14),
            RoundCounterButton(
              icon: Icons.add,
              onPressed: onIncrement,
              enabled: true,
            ),
          ],
        ),
      ],
    );
  }
}
