import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../../components/images.dart';
import '../../components/coursePackages.dart';

class OnePackages extends StatelessWidget {
  const OnePackages({
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
              price: bronzePrice1,
              timeText: timetext1,
              lesNum: bronzeLesson1,
              month: bronzeMonth1,
              coursePrice: bronzeDayPrice1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: currentWidth * 0.030),
            child: Pack(
              currentWidth: currentWidth,
              title: goldText,
              price: goldPrice1,
              timeText: timetext1,
              lesNum: goldLesson1,
              month: goldMonth1,
              coursePrice: goldDayPrice1,
              flag: Image.asset(ribbon, height: currentWidth * 0.050),
            ),
          ),
          Pack(
              currentWidth: currentWidth,
              title: silverText,
              price: silverPrice1,
              timeText: timetext1,
              lesNum: silverLesson1,
              month: silverMonth1,
              coursePrice: silverDayPrice1),
        ],
      ),
    );
  }
}
