import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wizwords_web/Pages/b1_HomePages/home_pages.dart';
import 'package:wizwords_web/Pages/b2_About/About_page.dart';
import 'package:wizwords_web/Pages/b3.1_coursesPages/course_1_page/OneToOne_page.dart';
import 'package:wizwords_web/Pages/b3.1_coursesPages/course_2_page/Group_lessons_page.dart';
import 'package:wizwords_web/Pages/b3.1_coursesPages/course_3_page/SpeakingClub_Page.dart';
import 'package:wizwords_web/Pages/b3.1_coursesPages/course_4_page/For_Kids_page.dart';
import 'package:wizwords_web/Pages/b3_Courses/Courses_page.dart';

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
  GoRoute(
      path: '/Courses',
      builder: (BuildContext context, GoRouterState state) {
        return const CoursesPage();
      }),
  GoRoute(
      path: '/OneToOne',
      builder: (BuildContext context, GoRouterState state) {
        return const OnetoOnePage();
      }),
  GoRoute(
      path: '/Group',
      builder: (BuildContext context, GoRouterState state) {
        return const GroupPage();
      }),
  GoRoute(
      path: '/SpeakingClub',
      builder: (BuildContext context, GoRouterState state) {
        return const SpeakingClubPage();
      }),
  GoRoute(
      path: '/Kids',
      builder: (BuildContext context, GoRouterState state) {
        return const ForKids();
      }),
]);
