import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_floating_action_button.dart';
import 'widgets/category_list/categories_list.dart';
import 'widgets/experience_list/experience_list_view.dart';
import 'widgets/shared/explore_app_bar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExploreAppBar(
        showBackButton: false,
        showNotification: true,
        hintText: 'Search ',
        suffixIcon: SvgPicture.asset(AppAssets.svgsFilter),
        controller: TextEditingController(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CategoriesList(),
            verticalSpace(10),
            const Expanded(
              child: SingleChildScrollView(child: ExperienceListView()),
            ),
          ],
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
