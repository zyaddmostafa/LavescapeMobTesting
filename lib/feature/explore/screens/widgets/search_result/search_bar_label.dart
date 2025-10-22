import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_styles.dart';

class SearchBarLabel extends StatelessWidget {
  final String title;
  final String location;
  final String dateRange;
  final String guests;

  const SearchBarLabel({
    super.key,
    required this.title,
    required this.location,
    required this.dateRange,
    required this.guests,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: AppTextStyles.font12SemiBoldLabelColor),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(location, style: AppTextStyles.font12MediumGrey),
            _dot(),
            Text(dateRange, style: AppTextStyles.font12MediumGrey),
            _dot(),
            Text(guests, style: AppTextStyles.font12MediumGrey),
          ],
        ),
      ],
    );
  }

  Padding _dot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        width: 4.w,
        height: 4.h,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
