import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.font18SemiBoldBlack),
      centerTitle: true,
      shadowColor: Colors.black.withValues(alpha: 0.8),
      elevation: 1,
    );
  }
}
