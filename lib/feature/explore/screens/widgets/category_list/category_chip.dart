import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../model/category_model.dart';

class CategoryChip extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;

  const CategoryChip({
    super.key,
    required this.category,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        verticalSpace(8),
        SvgPicture.asset(
          category.iconPath,
          width: 32.w,
          height: 32.h,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColor.primary : AppColor.secondary,
            BlendMode.srcIn,
          ),
        ),
        verticalSpace(4),
        Text(
          category.name,
          style: isSelected
              ? AppTextStyles.font12MediumGrey.copyWith(color: AppColor.primary)
              : AppTextStyles.font12MediumGrey,
          textAlign: TextAlign.center,
        ),
        verticalSpace(8),
        Container(
          height: 2.h,
          width: 70.w,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primary : Colors.transparent,
          ),
        ),
      ],
    );
  }
}
