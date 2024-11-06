import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/b3.1_coursesPages/components/titleImg.dart';
import 'package:wizwords_web/Pages/components/images.dart';

import 'package:wizwords_web/Pages/components/texts.dart';

import '../../../components/Course_title.dart';

class GroupTitle extends StatelessWidget {
  const GroupTitle({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CourseTitle(
            currentWith: currentWidth, text: course2, subtext: course1Sub),
        TitleImg(
          currentWidth: currentWidth,
          img: cImage2_1,
          size: currentWidth * 0.30,
        )
      ],
    );
  }
}
