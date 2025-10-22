class CategoryModel {
  final String name;
  final String iconPath;

  const CategoryModel({required this.name, required this.iconPath});

  static const List<CategoryModel> categories = [
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
}
