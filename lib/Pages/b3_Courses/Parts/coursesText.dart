import 'package:flutter/widgets.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

class CoursesText extends StatelessWidget {
  const CoursesText({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.1),
      child: Column(
        children: [
          TextType1(
              text: coursesText1, color: green, size: currentWidth * 0.070),
          TextType1(
              text: coursesText2, color: green, size: currentWidth * 0.013),
          TextType1(
              text: coursesText3, color: green, size: currentWidth * 0.013),
        ],
      ),
    );
  }
}
