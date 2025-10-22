import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/widgets/custom_floating_action_button.dart';
import 'widgets/experience_list/experience_list_view.dart';
import 'widgets/result_app_bar.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ResultAppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: ExperienceListView(),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
        title: 'Map View',
        icon: SvgPicture.asset(AppAssets.svgsMapIcon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
