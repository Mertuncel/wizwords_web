import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../../components/Course_title.dart';
import '../../../components/images.dart';
import '../../components/titleImg.dart';

class SpeakingTitle extends StatelessWidget {
  const SpeakingTitle({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CourseTitle(
            currentWith: currentWidth, text: course3, subtext: course1Sub),
        TitleImg(
          currentWidth: currentWidth,
          img: cImage3_1,
          size: currentWidth * 0.30,
        )
      ],
    );
  }
}
