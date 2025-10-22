import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../model/experience_model.dart';
import 'experience_card.dart';

class ExperienceListView extends StatelessWidget {
  const ExperienceListView({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = ExperienceModel.experiences;

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: experiences.length,
      separatorBuilder: (context, index) => verticalSpace(10),
      itemBuilder: (context, index) {
        return ExperienceCard(experience: experiences[index]);
      },
    );
  }
}
