import 'package:flutter/material.dart';

import 'app_text_form_field.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController? controller;
  const EmailTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      label: 'Email Address',
      hintText: 'you@email.com',
      prefixIcon: Icons.email_outlined,
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
