

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_test_app/common/routes/routes.dart';
import 'package:weather_test_app/feature/main/presentation/page/main_screen.dart';
import 'package:weather_test_app/feature/splash/presentation/page/splash_page.dart';


class AppRouter {
  AppRouter._privateConstructor();

  static final AppRouter _instance = AppRouter._privateConstructor();

  factory AppRouter() {
    return _instance;
  }

  late final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (BuildContext context, GoRouterState state) =>
        const SplashPage(),
      ),
      GoRoute(
        path: Routes.main,
        builder: (BuildContext context, GoRouterState state) =>
        MainPage(),
      ),
    ],
  );
}
