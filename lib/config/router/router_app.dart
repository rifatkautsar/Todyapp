import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/config/router/app_route_path.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutePath.defaultRoute,
    debugLogDiagnostics: kDebugMode ? true : false,
    routes: []);
