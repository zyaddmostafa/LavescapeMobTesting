import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/helpers/extention.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import 'explore_search_bar.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final bool showNotification;
  final VoidCallback? onBackPressed;
  final VoidCallback? onNotificationPressed;

  const ExploreAppBar({
    super.key,
    this.showBackButton = false,
    this.showNotification = true,
    this.onBackPressed,
    this.onNotificationPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primary,
      padding: const EdgeInsets.all(14),
      child: SafeArea(
        child: Row(
          children: [
            if (showBackButton) ...[
              GestureDetector(
                onTap: onBackPressed ?? () => context.pop(),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              horizontalSpace(12),
            ],
            const Expanded(child: ExploreSearchBar()),
            if (showNotification) ...[
              horizontalSpace(12),

              GestureDetector(
                onTap: onNotificationPressed,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset(AppAssets.svgsBell),
                    Positioned(
                      top: -14,
                      right: -2,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          '2',
                          style: AppTextStyles.font11BoldPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(106);
}
