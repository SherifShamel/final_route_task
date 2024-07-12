import 'package:dartz/dartz.dart';
import 'package:route_task/core/failure/failure.dart';

import '../entities/product_data.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductData>>> getProductData();
}
