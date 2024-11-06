import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../../components/images.dart';
import '../../components/coursePackages.dart';

class TwoPackages extends StatelessWidget {
  const TwoPackages({
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
              price: bronzePrice2,
              timeText: timetext2,
              lesNum: bronzeLesson2,
              month: bronzeMonth2,
              coursePrice: bronzeDayPrice2),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: currentWidth * 0.030),
            child: Pack(
              currentWidth: currentWidth,
              title: goldText,
              price: goldPrice2,
              timeText: timetext2,
              lesNum: goldLesson2,
              month: goldMonth2,
              coursePrice: goldDayPrice2,
              flag: Image.asset(ribbon, height: currentWidth * 0.050),
            ),
          ),
          Pack(
              currentWidth: currentWidth,
              title: silverText,
              price: silverPrice2,
              timeText: timetext2,
              lesNum: silverLesson2,
              month: silverMonth2,
              coursePrice: silverDayPrice2),
        ],
      ),
    );
  }
}
