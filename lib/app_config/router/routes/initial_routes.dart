part of 'package:best_practices_dvelopers/app_config/router/app_routes.dart';

List<GoRoute> initialRoutes = [
  GoRoute(
    path: HomePage.path,
    name: HomePage.name,
    builder: (context, state) => const HomePage(),
  ),
];
