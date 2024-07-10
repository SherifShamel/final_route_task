import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_task/core/failure/failure.dart';
import 'package:route_task/core/failure/failures.dart';
import 'package:route_task/data/data_source/product_data_source.dart';
import 'package:route_task/data/model/product_data_model.dart';
import 'package:route_task/domain/entities/product_data.dart';
import 'package:route_task/domain/repository/product_repository.dart';

class ProductRepositoryImp implements ProductRepository {
  final ProductDataSource productDataSource;

  ProductRepositoryImp(this.productDataSource);

  @override
  Future<Either<Failure, List<ProductData>>> getHomeData() async {
    try {
      final response = await productDataSource.getproductList();
      if (response.statusCode == 200) {
        List<ProductData> productDataList = [];
        var responseData = response.data["products"];

        for (var e in responseData) {
          productDataList.add(ProductDataModel.fromJSON(e));
        }
        return Right(productDataList);
      } else {
        return Left(
          ServerFailure(
            statusCode: response.statusCode.toString(),
          ),
        );
      }
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          statusCode: e.response.toString(),
        ),
      );
    }
  }
}
