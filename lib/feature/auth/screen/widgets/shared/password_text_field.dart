import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import 'app_text_form_field_and_label.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController? controller;
  const PasswordTextField({super.key, this.controller});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return AppTextFormFieldAndLabel(
      controller: widget.controller,
      label: 'Password',
      hintText: '• • • • • • • •',
      obscureText: _obscureText,
      prefixIcon: Padding(
        padding: const EdgeInsets.all(14),
        child: SvgPicture.asset(AppAssets.svgsKey),
      ),
      suffixIcon: _obscureText
          ? const Icon(Icons.visibility_off_outlined)
          : const Icon(Icons.visibility_outlined),

      onSuffixIconTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }

        return null;
      },
    );
  }
}
