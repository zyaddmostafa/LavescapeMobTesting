import 'package:flutter/material.dart';

import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/custom_app_button.dart';
import 'widgets/shared/auth_methods_list.dart';
import 'widgets/shared/email_text_field.dart';
import 'widgets/shared/lavescape_logo.dart';
import 'widgets/shared/or_and_dividers.dart';
import 'widgets/shared/welcome_message.dart';
import '../models/otp_verification_args.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({super.key});

  @override
  State<SignUpWithEmail> createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpWithEmail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              verticalSpace(30),
              const LavescapeLogo(),
              verticalSpace(40),
              const WelcomeMessage(),
              verticalSpace(20),

              Form(
                key: _formKey,
                child: EmailTextField(controller: _emailController),
              ),

              verticalSpace(20),
              CustomAppButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.pushNamed(
                      Routes.otpVerificationScreen,
                      arguments: OtpVerificationArgs(
                        email: _emailController.text,
                        isPhoneSignup: false,
                      ),
                    );
                  }
                },
              ),
              verticalSpace(30),
              const OrAndDividers(),
              verticalSpace(30),

              const AuthMethodsList(),
            ],
          ),
        ),
      ),
    );
  }
}
