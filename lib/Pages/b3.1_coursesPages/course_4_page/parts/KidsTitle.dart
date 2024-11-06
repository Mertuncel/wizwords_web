import 'package:flutter/material.dart';

import '../../../components/Course_title.dart';
import '../../../components/images.dart';
import '../../../components/texts.dart';
import '../../components/titleImg.dart';

class KidsTitle extends StatelessWidget {
  const KidsTitle({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CourseTitle(
            currentWith: currentWidth, text: course4, subtext: course1Sub),
        TitleImg(
          currentWidth: currentWidth,
          img: cImage4_1,
          size: currentWidth * 0.25,
        )
      ],
    );
  }
}
