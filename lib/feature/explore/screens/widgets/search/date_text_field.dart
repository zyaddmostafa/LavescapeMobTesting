import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class DateTextField extends StatefulWidget {
  final TextEditingController? controller;
  final VoidCallback? onTap;

  const DateTextField({
    super.key,
    this.controller,
    this.onTap,
  });

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.controller,
      readOnly: true,
      hintText: 'Select Date',
      suffixIcon: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: AppColor.componentLight,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          border: Border(
            top: BorderSide(color: AppColor.componentsColor),
            right: BorderSide(color: AppColor.componentsColor),
            bottom: BorderSide(color: AppColor.componentsColor),
          ),
        ),
        child: SvgPicture.asset(AppAssets.svgsCalendarDays),
      ),
      onTap: widget.onTap,
    );
  }
}
