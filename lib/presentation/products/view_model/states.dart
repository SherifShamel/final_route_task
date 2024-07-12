import 'package:route_task/domain/entities/product_data.dart';

sealed class ProductStates {}

class LoadingProductState extends ProductStates{}
class ErrorProductState extends ProductStates{}
class SuccessProductState extends ProductStates{
  final List<ProductData> productDataList;
  SuccessProductState(this.productDataList);
}