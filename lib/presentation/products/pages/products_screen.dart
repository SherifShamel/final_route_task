import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/presentation/products/view_model/cubit.dart';
import 'package:route_task/presentation/products/view_model/states.dart';
import 'package:route_task/presentation/products/widgets/single_product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var vm = ProductViewModel();

  @override
  void initState() {
    vm.getProductsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocBuilder<ProductViewModel, ProductStates>(
        bloc: vm,
        builder: (context, state) {
          switch (state) {
            case LoadingProductState():
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            case ErrorProductState():
              {
                return const Center(
                  child: Text("Error"),
                );
              }
            case SuccessProductState():
              {
                var productsList = state.productDataList;
                return GridView.builder(
                  itemCount: productsList.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return SingleProductWidget(
                        productData: productsList[index]);
                  },
                );
              }
          }
        },
      )
    );
  }
}
