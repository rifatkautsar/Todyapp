import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/config/router/app_route_path.dart';
import 'package:todoapp/features/splashscreen/presentation/pages/splash_screen_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutePath.defaultRoute,
    debugLogDiagnostics: kDebugMode ? true : false,
    routes: [
      GoRoute(
          path: AppRoutePath.defaultRoute,
          builder: (context, state) {
            return const SplashScreenPage();
          }),
    ]);
