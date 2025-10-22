import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../model/search_result_arg.dart';
import '../search_result/search_bar_label.dart';
import 'explore_app_bar.dart';

class ResultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final SearchResultArg searchResultArguments;
  const ResultAppBar({super.key, required this.searchResultArguments});

  @override
  Widget build(BuildContext context) {
    return ExploreAppBar(
      showBackButton: true,
      showNotification: false,
      isForSearch: false,
      label: Center(
        child: SearchBarLabel(
          title: 'Camel Ride',
          location: searchResultArguments.city,
          dateRange: searchResultArguments.rangeDate,
          guests: searchResultArguments.guests,
        ),
      ),
      suffixIcon: SvgPicture.asset(AppAssets.svgsClose),
      controller: TextEditingController(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
