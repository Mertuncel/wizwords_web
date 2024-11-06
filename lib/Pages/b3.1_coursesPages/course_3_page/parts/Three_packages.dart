import 'package:flutter/material.dart';

import '../../../components/images.dart';
import '../../../components/texts.dart';
import '../../components/coursePackages.dart';

class ThreePackages extends StatelessWidget {
  const ThreePackages({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: currentWidth * 0.1, bottom: currentWidth * 0.050),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pack(
              currentWidth: currentWidth,
              title: bronzeText,
              price: bronzePrice3,
              timeText: timetext2,
              lesNum: bronzeLesson3,
              month: bronzeMonth3,
              coursePrice: bronzeDayPrice3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: currentWidth * 0.030),
            child: Pack(
              currentWidth: currentWidth,
              title: goldText,
              price: goldPrice3,
              timeText: timetext2,
              lesNum: goldLesson3,
              month: goldMonth3,
              coursePrice: goldDayPrice3,
              flag: Image.asset(ribbon, height: currentWidth * 0.050),
            ),
          ),
          Pack(
              currentWidth: currentWidth,
              title: silverText,
              price: silverPrice3,
              timeText: timetext2,
              lesNum: silverLesson3,
              month: silverMonth3,
              coursePrice: silverDayPrice3),
        ],
      ),
    );
  }
}
