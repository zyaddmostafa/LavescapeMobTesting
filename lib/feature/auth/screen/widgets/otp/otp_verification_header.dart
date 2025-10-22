import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';

class OtpVerificationHeader extends StatelessWidget {
  final String otpTo;
  final bool isPhone;
  const OtpVerificationHeader({
    super.key,
    required this.otpTo,
    required this.isPhone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(30),
        const Text(
          'OTP confirmation',
          style: AppTextStyles.font18SemiBoldBlack,
        ),
        verticalSpace(8),
        Row(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Enter the code we sent over ${isPhone ? 'SMS' : 'Email'} to \n ',
                    style: AppTextStyles.font14RegularGrey,
                  ),
                  TextSpan(
                    text: otpTo,
                    style: AppTextStyles.font14SemiBoldBlack,
                  ),
                ],
              ),
            ),
            const Spacer(),
            SvgPicture.asset(AppAssets.svgsEditIcon),
          ],
        ),
      ],
    );
  }
}
