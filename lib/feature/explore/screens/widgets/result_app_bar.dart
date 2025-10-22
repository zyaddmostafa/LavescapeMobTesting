import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/app_assets.dart';
import 'search_result/search_bar_label.dart';
import 'shared/explore_app_bar.dart';

class ResultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ExploreAppBar(
      showBackButton: true,
      showNotification: false,
      isForSearch: false,
      label: const Center(
        child: SearchBarLabel(
          title: 'Camel Ride',
          location: 'Dubai, UAE',
          dateRange: 'Aug 10-31',
          guests: '2 Guests',
        ),
      ),
      suffixIcon: SvgPicture.asset(AppAssets.svgsClose),
      controller: TextEditingController(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
