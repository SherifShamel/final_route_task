import 'package:flutter/material.dart';
import 'package:route_task/core/config/page_route_names.dart';
import 'package:route_task/core/config/routes.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Task',
      // theme: ApplicationThemeManger.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: PageRouteNames.initial,
      onGenerateRoute: Routes.onGenerate,
      navigatorKey: navigatorKey,
    );
  }
}
