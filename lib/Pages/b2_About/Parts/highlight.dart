import 'package:flutter/widgets.dart';
import 'package:wizwords_web/Pages/components/images.dart';

import '../../components/colors.dart';
import '../../components/textType.dart';

class Highlights extends StatelessWidget {
  const Highlights({
    super.key,
    required this.currentWidth,
    required this.text1,
    required this.text2,
  });
  final double currentWidth;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: currentWidth * 1 / 006,
      width: currentWidth * 1 / 005,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: gradient2),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: currentWidth * 0.020, top: currentWidth * 0.020),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              lightBulb,
              height: currentWidth * 0.050,
            ),
            SizedBox(height: currentWidth * 0.010),
            TextType1(text: text1, color: black, size: currentWidth * 0.013),
            SizedBox(height: currentWidth * 0.006),
            TextType1(text: text2, color: black, size: currentWidth * 0.008),
          ],
        ),
      ),
    );
  }
}
