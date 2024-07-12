import 'package:flutter/material.dart';
import 'package:route_task/domain/entities/product_data.dart';

class SingleProductWidget extends StatelessWidget {
  final ProductData productData;

  const SingleProductWidget({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(productData.images),
        Text(productData.title),
      ],
    );
  }
}
