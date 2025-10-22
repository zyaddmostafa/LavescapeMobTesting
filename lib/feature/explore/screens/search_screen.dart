import 'package:flutter/material.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/app_color.dart';
import 'widgets/category_list/categories_list.dart';
import 'widgets/search/recent_search_list.dart';
import 'widgets/search/search_bottom_buttons.dart';
import 'widgets/search/search_filter_fields.dart';
import 'widgets/shared/explore_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const ExploreAppBar(
        showBackButton: true,
        showNotification: false,
      ),
      body: Column(
        children: [
          const CategoriesList(),
          verticalSpace(10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SearchFilterFields(),
                  verticalSpace(16),
                  const RecentSearchList(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SearchBottomButtons(
        onCancel: () => context.pop(),
        onSearch: () {
          // Handle search action
        },
      ),
    );
  }
}
