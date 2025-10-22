import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_text_styles.dart';
import 'recent_search_item.dart';

class RecentSearchList extends StatelessWidget {
  const RecentSearchList({super.key});

  static const List<Map<String, String>> _recentSearches = [
    {
      'image': 'assets/images/desert_camel_adventure.png',
      'title': 'Camel Ride',
      'date': 'Jan 4-5',
    },
    {
      'image': 'assets/images/desert_camel_adventure.png',
      'title': 'Henna Art',
      'date': 'Jan 4-5',
    },
    {
      'image': 'assets/images/desert_camel_adventure.png',
      'title': 'Coffee Brewing',
      'date': 'Jan 4-5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Search',
            style: AppTextStyles.font18BoldBlack,
          ),
          verticalSpace(16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _recentSearches.length,
            separatorBuilder: (context, index) => verticalSpace(16),
            itemBuilder: (context, index) {
              final search = _recentSearches[index];
              return RecentSearchItem(
                imagePath: search['image']!,
                title: search['title']!,
                date: search['date']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
