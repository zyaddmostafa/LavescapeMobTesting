import 'package:flutter/material.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/custom_app_button.dart';
import 'widgets/shared/custom_app_bar.dart';

import 'widgets/shared/o_t_p_input.dart';
import 'widgets/shared/otp_verification_header.dart';
import '../models/otp_verification_args.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String? phoneNumber;
  final String? email;
  final bool isPhoneSignup;
  const OtpVerificationScreen({
    super.key,
    this.phoneNumber,
    this.email,
    required this.isPhoneSignup,
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final GlobalKey<OTPInputState> _otpKey = GlobalKey<OTPInputState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const CustomAppBar(title: 'Verify Number'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OtpVerificationHeader(
              phoneNumber: widget.phoneNumber ?? widget.email ?? '',
            ),
            verticalSpace(20),
            OTPInput(
              key: _otpKey,
              length: 6,
              onCompleted: (String otp) {
                // Handle OTP completion
              },
            ),
            verticalSpace(20),

            CustomAppButton(
              onPressed: () {
                _validate(context);
              },
            ),

            verticalSpace(20),

            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Didn’t receive code? ',
                    style: AppTextStyles.font14RegularGrey,
                  ),
                  TextSpan(
                    text: 'Resend',
                    style: AppTextStyles.font14RegularBlack,
                  ),
                  TextSpan(
                    text: ' in 00:05 ',
                    style: AppTextStyles.font14RegularGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _validate(BuildContext context) {
    if (_otpKey.currentState?.validateOTP() ?? false) {
      widget.isPhoneSignup
          ? context.pushNamed(Routes.finishSigningupScreen)
          : context.pushNamed(Routes.guestProfileCreatedScreen);
    }
  }
}
