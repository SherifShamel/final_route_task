import 'package:flutter/material.dart';
import 'package:route_task/core/config/page_route_names.dart';
import 'package:route_task/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () =>
          navigatorKey.currentState!.pushReplacementNamed(PageRouteNames.home),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/img/splash_screen.png",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
