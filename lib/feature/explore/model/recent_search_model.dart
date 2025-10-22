import '../../../core/helpers/app_assets.dart';

class RecentSearchModel {
  final String imagePath;
  final String title;
  final String date;

  const RecentSearchModel({
    required this.imagePath,
    required this.title,
    required this.date,
  });

  static const List<RecentSearchModel> recentSearches = [
    RecentSearchModel(
      imagePath: AppAssets.imagesCamelRide,
      title: 'Camel Ride',
      date: 'Jan 4-5',
    ),
    RecentSearchModel(
      imagePath: AppAssets.imagesHennaArt,
      title: 'Henna Art',
      date: 'Jan 4-5',
    ),
    RecentSearchModel(
      imagePath: AppAssets.imagesCoffooBrewing,
      title: 'Coffee Brewing',
      date: 'Jan 4-5',
    ),
  ];
}
