class Cake {
  final String name;
  final String? description;
  final String price;
  final String image;

  const Cake({
    required this.name,
    this.description,
    required this.price,
    required this.image,
  });
}
