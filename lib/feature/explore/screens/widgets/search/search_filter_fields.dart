import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SearchFilterFields extends StatefulWidget {
  const SearchFilterFields({super.key});

  @override
  State<SearchFilterFields> createState() => _SearchFilterFieldsState();
}

class _SearchFilterFieldsState extends State<SearchFilterFields> {
  int guestCount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCityField(),
          verticalSpace(16),
          _buildDateField(),
          verticalSpace(16),
          _buildGuestField(),
        ],
      ),
    );
  }

  Widget _buildCityField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'City',
          style: AppTextStyles.font16MediumBlack,
        ),
        verticalSpace(8),
        const AppTextFormField(
          hintText: '',
          readOnly: true,
        ),
      ],
    );
  }

  Widget _buildDateField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Date',
          style: AppTextStyles.font16MediumBlack,
        ),
        verticalSpace(8),
        AppTextFormField(
          hintText: '',
          readOnly: true,
          suffixIcon: const Icon(
            Icons.calendar_today_outlined,
            color: AppColor.secondary,
            size: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildGuestField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Guest',
          style: AppTextStyles.font16MediumBlack,
        ),
        verticalSpace(8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColor.componentsColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Spacer(),
              _buildCounterButton(
                icon: Icons.remove,
                onTap: () {
                  if (guestCount > 1) {
                    setState(() => guestCount--);
                  }
                },
              ),
              horizontalSpace(16),
              Text(
                guestCount.toString(),
                style: AppTextStyles.font16MediumBlack,
              ),
              horizontalSpace(16),
              _buildCounterButton(
                icon: Icons.add,
                onTap: () {
                  setState(() => guestCount++);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCounterButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.secondary),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(
          icon,
          size: 16,
          color: AppColor.secondary,
        ),
      ),
    );
  }
}
