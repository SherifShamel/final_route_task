class ProductData {
  final int id;
  final String title;
  final double description;
  final double price;
  final double? discountRate;
  final double? rating;
  final List<String> images;

  ProductData({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountRate,
    required this.rating,
    required this.images,
  });
}