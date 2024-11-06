class SkincareModel {
  final String name;
  final String image;
  final String description;
  final double price;
  final bool isFavorite; // Tambahkan properti isFavorite

  SkincareModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.isFavorite,
  });
}
