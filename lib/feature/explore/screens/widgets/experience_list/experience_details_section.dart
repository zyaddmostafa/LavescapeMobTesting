import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../model/experience_model.dart';

class ExperienceDetailsSection extends StatelessWidget {
  final ExperienceModel experience;

  const ExperienceDetailsSection({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.title, style: AppTextStyles.font16MediumBlack),
          verticalSpace(4),
          Row(
            children: [
              SvgPicture.asset(AppAssets.svgsMapPin),
              verticalSpace(4),
              Text(experience.location, style: AppTextStyles.font14RegularGrey),
            ],
          ),

          verticalSpace(12),
          Row(
            children: [
              Text(
                '\$${experience.pricePerPerson.toStringAsFixed(2)}',
                style: AppTextStyles.font18BoldBlack,
              ),
              const Text(
                ' / per person',
                style: AppTextStyles.font12Regularblack,
              ),
              const Spacer(),
              SvgPicture.asset(AppAssets.svgsStar, width: 16, height: 16),
              verticalSpace(4),
              Text(
                experience.rating.toString(),
                style: AppTextStyles.font14MediumLabelColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
