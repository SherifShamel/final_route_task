class ProductData {
  final int id;
  final String title;
  final String description;
  final num price;
  final num? discountRate;
  final double? rating;

  final String images;

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
