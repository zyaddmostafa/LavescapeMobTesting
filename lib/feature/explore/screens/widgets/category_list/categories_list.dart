import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/category_model.dart';
import 'category_chip.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _selectedIndex = 0;

  static const List<CategoryModel> _categories = [
    CategoryModel(
      name: "I'm Flexible",
      iconPath: 'assets/svgs/categories/flexabile.svg',
    ),
    CategoryModel(
      name: 'Camel Riding',
      iconPath: 'assets/svgs/categories/camel.svg',
    ),
    CategoryModel(
      name: 'Camel Riding',
      iconPath: 'assets/svgs/categories/camp.svg',
    ),
    CategoryModel(
      name: 'Cooking Class',
      iconPath: 'assets/svgs/categories/cooking.svg',
    ),
    CategoryModel(
      name: 'Henna Art',
      iconPath: 'assets/svgs/categories/henna_art.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: CategoryChip(
              category: _categories[index],
              isSelected: _selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
