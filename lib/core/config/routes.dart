import 'package:flutter/material.dart';
import 'package:route_task/core/config/page_route_names.dart';
import 'package:route_task/presentation/products/pages/products_screen.dart';
import 'package:route_task/presentation/splash/splash_screen.dart';

class Routes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case PageRouteNames.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
