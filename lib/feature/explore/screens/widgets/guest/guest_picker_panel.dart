import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import 'guest_row.dart';
import '../../../../../core/helpers/spacing.dart';

class GuestPickerPanel extends StatelessWidget {
  final int adults;
  final int children;
  final ValueChanged<int> onAdultsChanged;
  final ValueChanged<int> onChildrenChanged;
  const GuestPickerPanel({
    super.key,
    required this.adults,
    required this.children,
    required this.onAdultsChanged,
    required this.onChildrenChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: const Border(
          bottom: BorderSide(color: AppColor.componentsColor),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Add Guest', style: AppTextStyles.font18MediumLabelColor),
          verticalSpace(20),
          GuestRow(
            label: 'Adults',
            subtitle: 'Ages 13 or above',
            count: adults,
            onDecrement: () {
              if (adults > 0) onAdultsChanged(adults - 1);
            },
            onIncrement: () {
              onAdultsChanged(adults + 1);
            },
            canDecrement: adults > 0,
          ),
          verticalSpace(20),
          GuestRow(
            label: 'Children',
            subtitle: 'Ages 3 or below',
            count: children,
            onDecrement: () {
              if (children > 0) onChildrenChanged(children - 1);
            },
            onIncrement: () {
              onChildrenChanged(children + 1);
            },
            canDecrement: children > 0,
          ),
        ],
      ),
    );
  }
}
