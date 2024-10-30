import 'package:flutter/widgets.dart';
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
    return CoursesButton(
      text: coursesText4,
      subText: coursesSubText,
      image: courseImg1,
      currentWidth: currentWidth,
    );
  }
}
