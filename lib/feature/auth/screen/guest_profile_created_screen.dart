import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/custom_app_button.dart';

class GuestProfileCreatedScreen extends StatelessWidget {
  const GuestProfileCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              verticalSpace(96),
              SvgPicture.asset(AppAssets.svgsConfirmationLogo),
              verticalSpace(34),
              const Text(
                'Guest Profile Created.',
                style: AppTextStyles.font20SemiBoldWhite,
              ),
              verticalSpace(10),
              const Text(
                'You have successfully created a guest profile, enabling access to explore and book \n experiences on the platform.',
                style: AppTextStyles.font16RegularWhite,
                textAlign: TextAlign.center,
              ),

              const Spacer(),
              CustomAppButton(
                label: "I'll do this later",
                backgroundColor: Colors.transparent,
                labelTextStyle: AppTextStyles.font15SemiBoldWhite,
                borderSide: const BorderSide(color: Colors.white, width: 1),
                onPressed: () {
                  context.pushNamedAndRemoveUntil(
                    Routes.exploreScreen,
                    predicate: (route) => false,
                  );
                },
              ),
              verticalSpace(10),
              CustomAppButton(
                label: "Verify Identity",
                backgroundColor: Colors.white,
                labelTextStyle: AppTextStyles.font15SemiBoldPurple,
                onPressed: () {
                  context.pushNamedAndRemoveUntil(
                    Routes.exploreScreen,
                    predicate: (route) => false,
                  );
                },
              ),

              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
