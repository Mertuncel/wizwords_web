import 'package:flutter/material.dart';

import 'package:wizwords_web/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Wizwords English School',
      theme: ThemeData(
        hoverColor: Colors.transparent,
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
