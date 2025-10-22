import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';

class OtpVerificationHeader extends StatelessWidget {
  final String phoneNumber;
  const OtpVerificationHeader({super.key, required this.phoneNumber});

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
                  const TextSpan(
                    text: 'Enter the code we sent over SMS to \n ',
                    style: AppTextStyles.font14RegularGrey,
                  ),
                  TextSpan(
                    text: phoneNumber,
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
