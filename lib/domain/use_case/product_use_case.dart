import 'package:dartz/dartz.dart';
import 'package:route_task/domain/repository/product_repository.dart';

import '../../core/failure/failure.dart';
import '../entities/product_data.dart';

class ProductUseCase {
  final ProductRepository productRepository;

  ProductUseCase(this.productRepository);

  Future<Either<Failure, List<ProductData>>> getProducts() async {
    return await productRepository.getHomeData();
  }
}
