import 'package:flutter/material.dart';

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
      prefixIcon: Icons.lock_outline,
      suffixIcon: _obscureText
          ? Icons.visibility_off_outlined
          : Icons.visibility_outlined,

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
