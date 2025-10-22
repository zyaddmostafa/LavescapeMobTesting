import 'package:flutter/material.dart';
import '../../../model/experience_model.dart';
import 'experience_card_image.dart';
import 'experience_details_section.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModel experience;
  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExperienceCardImage(experience: experience),
          ExperienceDetailsSection(experience: experience),
        ],
      ),
    );
  }
}
