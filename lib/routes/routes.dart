import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wizwords_web/Pages/HomePages/home_pages.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePages();
      }),
]);
