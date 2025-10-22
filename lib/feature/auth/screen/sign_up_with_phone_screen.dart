import 'package:flutter/material.dart';

import '../../../core/helpers/app_snack_bar.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/custom_app_button.dart';
import 'widgets/shared/custom_phone_input_field.dart';
import 'widgets/shared/lavescape_logo.dart';
import 'widgets/shared/auth_methods_list.dart';
import 'widgets/shared/or_and_dividers.dart';
import 'widgets/shared/welcome_message.dart';
import '../models/otp_verification_args.dart';

class SignUpWithPhoneScreen extends StatefulWidget {
  const SignUpWithPhoneScreen({super.key});

  @override
  State<SignUpWithPhoneScreen> createState() => _SignUpWithPhoneScreenState();
}

class _SignUpWithPhoneScreenState extends State<SignUpWithPhoneScreen> {
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(30),
              const LavescapeLogo(),
              verticalSpace(40),
              const WelcomeMessage(),
              verticalSpace(20),
              const Text(
                'Phone Number',
                style: AppTextStyles.font15SemiBoldLabelColor,
              ),
              verticalSpace(8),
              CustomPhoneInputField(
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
              ),
              verticalSpace(20),
              CustomAppButton(
                onPressed: () {
                  _validateThenNavigateToOTPVerification(context);
                },
              ),
              verticalSpace(30),

              const OrAndDividers(),
              verticalSpace(30),

              const AuthMethodsList(isPhoneSignup: true),
            ],
          ),
        ),
      ),
    );
  }

  void _validateThenNavigateToOTPVerification(BuildContext context) {
    if (phoneNumber.isNotEmpty) {
      context.pushNamed(
        Routes.otpVerificationScreen,
        arguments: OtpVerificationArgs(
          phoneNumber: phoneNumber,
          isPhoneSignup: true,
        ),
      );
    } else {
      AppSnackBar.errorSnackBar(context, 'Please enter your phone number');
    }
  }
}
