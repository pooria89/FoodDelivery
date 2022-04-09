class Food {
  final String id;

  final String name;

  final String imagePath;

  final String category;

  final double price;

  final double discount;

  final double ratings;

  Food(
      {required this.id,
        required this.name,
        required this.imagePath,
        required this.category,
        required this.price,
        required this.discount,
        required this.ratings});
}