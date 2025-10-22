import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../model/recent_search_model.dart';
import 'recent_search_item.dart';

class RecentSearchList extends StatelessWidget {
  const RecentSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    final recentSearches = RecentSearchModel.recentSearches;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Recent Search', style: AppTextStyles.font16MediumBlack),
        ),
        verticalSpace(12),
        const Divider(color: AppColor.componentsColor, thickness: 1),
        verticalSpace(16),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recentSearches.length,
            separatorBuilder: (context, index) => verticalSpace(16),
            itemBuilder: (context, index) {
              final search = recentSearches[index];

              return RecentSearchItem(
                imagePath: search.imagePath,
                title: search.title,
                date: search.date,
              );
            },
          ),
        ),
      ],
    );
  }
}
