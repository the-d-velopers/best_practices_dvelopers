import 'package:best_practices_dvelopers/app_config/router/app_routes.dart';
import 'package:best_practices_dvelopers/features/home/ui/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,

    debugLogDiagnostics: true,
    routes: getRoutes(rootNavigatorKey),
    initialLocation: HomePage.path,
    //redirect: _routeGuard,
    //refreshListenable: GoRouterRefreshStream(_sessionManager.stream),
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream() {
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
