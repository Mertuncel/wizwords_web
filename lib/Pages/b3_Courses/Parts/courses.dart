import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import 'courses_button.dart';

class Courses extends StatelessWidget {
  const Courses({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: currentWidth * 0.1,
          left: currentWidth * 0.6 / 0.97,
          child: Image.asset(
            courseImgKite,
            height: currentWidth * 0.1,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: currentWidth * 0.080),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CoursesButton(
                    text: coursesText4,
                    subText: coursesSubText,
                    image: courseImg1,
                    currentWidth: currentWidth,
                    press: () => context.go('/OneToOne'),
                  ),
                  CoursesButton(
                    text: coursesText5,
                    subText: coursesSubText,
                    image: courseImg2,
                    currentWidth: currentWidth,
                    press: () {},
                  ),
                  CoursesButton(
                    text: coursesText6,
                    subText: coursesSubText,
                    image: courseImg3,
                    currentWidth: currentWidth,
                    press: () {},
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: currentWidth * 0.1),
                  child: CoursesChildButton(
                      currentWidth: currentWidth,
                      text: coursesText7,
                      subText: coursesSubText,
                      press: () {})),
            ],
          ),
        ),
        Positioned(
          bottom: currentWidth * 0.4 / 1.1,
          left: currentWidth * 0.3 / 0.93,
          child: Image.asset(
            courseImgSun,
            height: currentWidth * 0.050,
          ),
        ),
      ],
    );
  }
}
