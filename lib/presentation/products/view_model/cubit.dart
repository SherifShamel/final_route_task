import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/services/web_serivces.dart';
import 'package:route_task/data/data_source/product_data_source.dart';
import 'package:route_task/data/data_source/product_data_source_imp.dart';
import 'package:route_task/data/repository_imp/product_repository_imp.dart';
import 'package:route_task/domain/repository/product_repository.dart';
import 'package:route_task/domain/use_case/product_use_case.dart';
import 'package:route_task/presentation/products/view_model/states.dart';

class ProductViewModel extends Cubit<ProductStates> {
  ProductViewModel() : super(LoadingProductState());

  final WebServices _services = WebServices();
  late ProductUseCase getProductUseCase;
  late ProductRepository productRepository;
  late ProductDataSource productDataSource;

  Future<bool> getProductsList() async {
    emit(LoadingProductState());
    productDataSource = ProductDataSourceImp(_services.freeDio);
    productRepository = ProductRepositoryImp(productDataSource);
    getProductUseCase = ProductUseCase(productRepository);

    final result = await getProductUseCase.getProducts();

    return result.fold((fail) {
      emit(ErrorProductState());
      return Future.value(false);
    }, (data) {
      emit(SuccessProductState(data));
      return Future.value(true);
    });
  }
}
