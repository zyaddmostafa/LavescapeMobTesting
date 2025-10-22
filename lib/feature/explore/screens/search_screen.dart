import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/helpers/app_assets.dart';
import '../../../core/helpers/app_snack_bar.dart';
import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_color.dart';
import '../model/search_result_arg.dart';
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

  // Check if all controllers are empty
  bool get _areAllControllersEmpty =>
      _cityController.text.isEmpty &&
      _dateController.text.isEmpty &&
      _guestController.text.isEmpty;

  @override
  void dispose() {
    _cityController.dispose();
    _dateController.dispose();
    _guestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: ExploreAppBar(
        showBackButton: true,
        showNotification: false,
        hintText: 'Search',
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
                  verticalSpace(16),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SearchBottomButtons(
        clearLabel: 'Cancel',
        onClear: () {
          _cityController.clear();
          _dateController.clear();
          _guestController.clear();
          setState(() {});
          context.pop();
        },
        onSearch: _handleSearch,
      ),
    );
  }

  void _handleSearch() {
    if (_areAllControllersEmpty) {
      AppSnackBar.errorSnackBar(context, 'Please fill in all search fields');
    } else if (_cityController.text.isEmpty) {
      AppSnackBar.errorSnackBar(context, 'Please select a city');
    } else if (_dateController.text.isEmpty) {
      AppSnackBar.errorSnackBar(context, 'Please select dates');
    } else if (_guestController.text.isEmpty) {
      AppSnackBar.errorSnackBar(context, 'Please select guests');
    } else {
      // All fields filled, proceed to search results
      context.pushNamed(
        Routes.searchResultScreen,
        arguments: SearchResultArg(
          city: _cityController.text,
          rangeDate: _dateController.text,
          guests: _guestController.text,
        ),
      );
    }
  }
}
