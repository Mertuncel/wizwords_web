import 'package:flutter/material.dart';

import '../../components/colors.dart';
import '../../components/textType.dart';

class CoursesButton extends StatelessWidget {
  const CoursesButton({
    super.key,
    required this.currentWidth,
    required this.text,
    required this.image,
    required this.subText,
  });

  final double currentWidth;
  final String text;
  final String subText;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: currentWidth * 0.3,
      width: currentWidth * 0.3,
      child: Column(
        children: [
          TextType1(text: text, color: brown, size: currentWidth * 0.020),
          TextType1(text: subText, color: green, size: currentWidth * 0.010),
          Image.asset(image),
        ],
      ),
    );
  }
}
