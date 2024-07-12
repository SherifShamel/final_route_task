import 'package:route_task/domain/entities/product_data.dart';

class ProductDataModel extends ProductData {
  ProductDataModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price,
    required super.discountRate,
    required super.rating,
    required super.images,
  });

  factory ProductDataModel.fromJSON(Map<String, dynamic> json) =>
      ProductDataModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        discountRate: json["discountPercentage"],
        rating: json["rating"],
        images: json["images"][0],
      );
}
