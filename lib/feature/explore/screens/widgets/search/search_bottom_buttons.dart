import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_button.dart';

class SearchBottomButtons extends StatelessWidget {
  final VoidCallback? onClear;
  final VoidCallback? onSearch;
  final String clearLabel;

  const SearchBottomButtons({
    super.key,
    this.onClear,
    this.onSearch,
    this.clearLabel = 'Clear',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
        left: 20.w,
        right: 20.w,
        bottom: 20.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 12.h),
        child: Row(
          children: [
            Expanded(
              child: CustomAppButton(
                label: clearLabel,
                onPressed: onClear,
                backgroundColor: Colors.white,
                labelTextStyle: AppTextStyles.font15SemiBoldLabelColor,
                borderSide: const BorderSide(color: AppColor.componentsColor),
              ),
            ),
            horizontalSpace(12),
            Expanded(
              flex: 2,
              child: CustomAppButton(label: 'Search', onPressed: onSearch),
            ),
          ],
        ),
      ),
    );
  }
}
