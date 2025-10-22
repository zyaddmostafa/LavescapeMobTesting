import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_color.dart';
import 'widgets/category_list/categories_list.dart';
import 'widgets/search/recent_search_list.dart';
import 'widgets/search/search_bottom_buttons.dart';
import 'widgets/search/search_filter_fields.dart';
import 'widgets/shared/explore_app_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _guestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: ExploreAppBar(
        showBackButton: true,
        showNotification: false,
        hintText: 'Search ',
        suffixIcon: SvgPicture.asset(AppAssets.svgsFilter),
        controller: TextEditingController(),
      ),
      body: Column(
        children: [
          const CategoriesList(),
          verticalSpace(10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchFilterFields(
                    cityController: _cityController,
                    dateController: _dateController,
                    guestController: _guestController,
                  ),
                  verticalSpace(16),
                  const RecentSearchList(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SearchBottomButtons(
        onClear: () {
          _cityController.clear();
          _dateController.clear();
          _guestController.clear();
        },
        onSearch: () {
          context.pushNamed(Routes.searchResultScreen);
        },
      ),
    );
  }
}
