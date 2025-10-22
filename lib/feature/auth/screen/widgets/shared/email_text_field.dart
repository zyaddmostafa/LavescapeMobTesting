import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import 'app_text_form_field_and_label.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController? controller;
  const EmailTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return AppTextFormFieldAndLabel(
      controller: controller,
      label: 'Email Address',
      hintText: 'you@email.com',
      prefixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: SvgPicture.asset(AppAssets.svgsMail),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email address';
        }

        return null;
      },
    );
  }
}
