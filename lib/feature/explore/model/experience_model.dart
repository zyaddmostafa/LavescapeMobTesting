class ExperienceModel {
  final String title;
  final String description;
  final String imageUrl;
  final double rating;
  final double pricePerPerson;
  final String location;
  final bool isGuestFavorite;

  ExperienceModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.pricePerPerson,
    required this.location,
    this.isGuestFavorite = false,
  });

  static final List<ExperienceModel> experiences = [
    ExperienceModel(
      title: 'Desert Camel Adventure in Wadi Rum',
      description:
          'Explore the vast desert of Wadi Rum on a camel, enjoying breathtaking landscapes and unique experiences.',
      imageUrl: 'assets/images/desert_camel_adventure.png',
      rating: 4.81,
      pricePerPerson: 69.99,
      location: 'Wadi Rum, Jordan',
      isGuestFavorite: true,
    ),
    ExperienceModel(
      title: 'Camel Ride by the Pyramids of Giza',
      description:
          'Ride a camel beside the ancient pyramids of Giza and experience the wonders of Egypt up close.',
      imageUrl: 'assets/images/desert.png',
      rating: 4.75,
      pricePerPerson: 59.99,
      location: 'Giza, Egypt',
      isGuestFavorite: false,
    ),
    ExperienceModel(
      title: 'Sunset Camel Trek in the Desert',
      description:
          'Enjoy a magical sunset trek on camelback through golden sands and tranquil desert scenery.',
      imageUrl: 'assets/images/desert2.png',
      rating: 4.90,
      pricePerPerson: 79.99,
      location: 'Arabian Desert',
      isGuestFavorite: true,
    ),
  ];
}
