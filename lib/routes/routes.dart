import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wizwords_web/Pages/b1_HomePages/home_pages.dart';
import 'package:wizwords_web/Pages/b2_About/About_page.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePages();
      }),
  GoRoute(
      path: '/About',
      builder: (BuildContext context, GoRouterState state) {
        return const AboutPage();
      }),
]);
