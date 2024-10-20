import 'package:best_practices_dvelopers/app_config/app_theme/app_theme.dart';
import 'package:best_practices_dvelopers/app_config/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Best Practices Developers',
      theme: AppTheme.lightTheme(),
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
      routeInformationParser: _appRouter.router.routeInformationParser,
    );
  }
}
