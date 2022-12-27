import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/view/about/about_screen.dart';
import 'package:portfolio/view/index/index.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // routeInformationProvider: _router.routeInformationProvider,
      // routeInformationParser: _router.routeInformationParser,
      //routerDelegate: _router.routerDelegate,
      routerConfig: _router,
    );
  }
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Index(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutScreen(),
    ),
  ],
);
