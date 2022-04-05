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

final foods = [
  Food(
      id: "1",
      name: "Sandwich",
      imagePath: 'asset/images/sandwich.jpeg',
      category: "1",
      price: 15.0,
      discount: 0,
      ratings: 1.1
  ),
  Food(
      id: "2",
      name: "Burger",
      imagePath: 'asset/images/burger1.jpeg',
      category: "2",
      price: 36.0,
      discount: 0,
      ratings: 15.15
  )
];
