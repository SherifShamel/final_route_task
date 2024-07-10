import 'package:dio/dio.dart';
import 'package:route_task/data/data_source/product_data_source.dart';

class ProductDataSourceImp implements ProductDataSource {
  final Dio dio;

  ProductDataSourceImp(this.dio);

  @override
  Future<Response> getproductList() async {
    return await dio.get("/products");
  }
}
