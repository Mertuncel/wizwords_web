import 'package:flutter/material.dart';

import '../PhoneHomePage/phone_home_page.dart';
import '../components/colors.dart';
import '../components/footBar.dart';
import '../components/topBar.dart';
import 'Parts/courses.dart';
import 'Parts/coursesText.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: currentWidth > 600
          ? Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: gradient)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //TOP BAR

                    TopBar(currentWidth: currentWidth),

                    //İNDEX

                    CoursesText(currentWidth: currentWidth),
                    Courses(currentWidth: currentWidth),

                    // FOOTBAR
                    FoodBar(currentWidth: currentWidth),
                  ],
                ),
              ),
            )

          // TELEFON GÖRÜNÜMÜ

          : const PhoneHomePage(),
    );
  }
}
