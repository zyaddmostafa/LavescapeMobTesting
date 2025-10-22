import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../model/experience_model.dart';
import 'experience_card_dots_generator.dart';
import 'guest_favorite_card.dart';

class ExperienceCardImage extends StatelessWidget {
  final ExperienceModel experience;

  const ExperienceCardImage({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: AspectRatio(
            aspectRatio: 353 / 334,
            child: Image.asset(experience.imageUrl, fit: BoxFit.cover),
          ),
        ),
        if (experience.isGuestFavorite)
          const Positioned(top: 16, left: 16, child: GuestFavoriteCard()),
        Positioned(
          top: 16,
          right: 16,
          child: SvgPicture.asset(AppAssets.svgsFavIcon),
        ),
        const Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: ExperienceCardDotsGenerator(),
        ),
      ],
    );
  }
}
