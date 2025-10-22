import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class ExploreSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onTap;
  final String? hintText;
  final Widget? label;
  final Widget? suffixIcon;
  final bool isForSearch;
  const ExploreSearchBar({
    super.key,
    this.controller,
    this.onTap,
    this.hintText,
    this.label,
    this.suffixIcon,
    this.isForSearch = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText,
      label: label,
      controller: controller,
      prefixIcon: isForSearch
          ? Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(AppAssets.svgsSearch),
            )
          : null,
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
        child: suffixIcon,
      ),
      onTap: onTap,
    );
  }
}
