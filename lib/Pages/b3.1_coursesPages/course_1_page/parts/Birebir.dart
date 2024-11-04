import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/Course_title.dart';

import '../../../components/images.dart';
import '../../../components/texts.dart';

class Birebir extends StatelessWidget {
  const Birebir({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return CourseTitle(
        currentWith: currentWidth,
        text: course1,
        subtext: course1Sub,
        image: cImage1_1);
  }
}
