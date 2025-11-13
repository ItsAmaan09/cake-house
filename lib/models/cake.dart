class Cake {
  final String name;
  final String? description;
  final double price;
  final String image;

  const Cake({
    required this.name,
    this.description,
    required this.price,
    required this.image,
  });
}
