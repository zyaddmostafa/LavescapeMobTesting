import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/widgets/custom_floating_action_button.dart';
import '../model/search_result_arg.dart';
import 'widgets/experience_list/experience_list_view.dart';
import 'widgets/shared/result_app_bar.dart';

class SearchResult extends StatelessWidget {
  final SearchResultArg searchResultArguments;
  const SearchResult({super.key, required this.searchResultArguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      appBar: ResultAppBar(searchResultArguments: searchResultArguments),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: ExperienceListView(),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          context.pushNamed(
            Routes.exploreMapViewScreen,
            arguments: searchResultArguments,
          );
        },
        title: 'Map View',
        icon: SvgPicture.asset(AppAssets.svgsMapIcon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
