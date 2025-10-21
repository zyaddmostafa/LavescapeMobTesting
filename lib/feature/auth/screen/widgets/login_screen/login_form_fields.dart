import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../shared/app_text_form_field.dart';
import '../shared/password_text_field.dart';

class LoginFormFields extends StatelessWidget {
  final TextEditingController emailOrPhoneController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  const LoginFormFields({
    super.key,
    required this.emailOrPhoneController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          AppTextFormField(
            controller: emailOrPhoneController,
            label: 'Email Address / Phone Number',
            hintText: 'Enter',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email or phone number';
              }

              return null;
            },
          ),
          verticalSpace(12),
          PasswordTextField(controller: passwordController),
        ],
      ),
    );
  }
}
