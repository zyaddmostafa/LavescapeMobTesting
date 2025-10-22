import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_button.dart';

class SearchBottomButtons extends StatelessWidget {
  final VoidCallback? onClear;
  final VoidCallback? onSearch;

  const SearchBottomButtons({super.key, this.onClear, this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
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
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: CustomAppButton(
                label: 'Clear',
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
