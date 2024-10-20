import 'package:best_practices_dvelopers/features/home/ui/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes/initial_routes.dart';

List<RouteBase> getRoutes(GlobalKey<NavigatorState> rootNavigatorKey) =>
    <RouteBase>[
      ...initialRoutes,
    ];
