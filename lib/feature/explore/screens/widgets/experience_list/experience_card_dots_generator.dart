import 'package:flutter/material.dart';

class ExperienceCardDotsGenerator extends StatelessWidget {
  const ExperienceCardDotsGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 0
                ? Colors.white
                : Colors.white.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
