import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';

class RecentSearchItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final VoidCallback? onTap;

  const RecentSearchItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.date,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 40.w,
              height: 40.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.font16MediumBlack,
              ),
              verticalSpace(4),
              Text(
                date,
                style: AppTextStyles.font12RegularGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
