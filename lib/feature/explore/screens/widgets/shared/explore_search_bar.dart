import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class ExploreSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final void Function()? onTap;
  const ExploreSearchBar({super.key, this.controller, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Search',
      prefixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: SvgPicture.asset(AppAssets.svgsSearch),
      ),
      suffixIcon: Container(
        padding: const EdgeInsets.all(12),

        decoration: const BoxDecoration(
          color: Color(0xFFF8FAFC),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: SvgPicture.asset(AppAssets.svgsFilter),
      ),
      onTap: onTap,
    );
  }
}
