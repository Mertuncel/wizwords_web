import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/Course_title.dart';

import '../../../components/images.dart';
import '../../../components/texts.dart';
import '../../components/titleImg.dart';

class Birebir extends StatelessWidget {
  const Birebir({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CourseTitle(
            currentWith: currentWidth, text: course1, subtext: course1Sub),
        TitleImg(
          currentWidth: currentWidth,
          img: cImage1_1,
          size: currentWidth * 0.30,
        )
      ],
    );
  }
}
