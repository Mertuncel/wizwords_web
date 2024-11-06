import 'package:flutter/material.dart';

import '../../../components/images.dart';
import '../../../components/texts.dart';
import '../../components/coursePackages.dart';

class FourPackages extends StatelessWidget {
  const FourPackages({
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
              price: bronzePrice4,
              timeText: timetext1,
              lesNum: bronzeLesson4,
              month: bronzeMonth4,
              coursePrice: bronzeDayPrice4),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: currentWidth * 0.030),
            child: Pack(
              currentWidth: currentWidth,
              title: goldText,
              price: goldPrice4,
              timeText: timetext1,
              lesNum: goldLesson4,
              month: goldMonth4,
              coursePrice: goldDayPrice4,
              flag: Image.asset(ribbon, height: currentWidth * 0.050),
            ),
          ),
          Pack(
              currentWidth: currentWidth,
              title: silverText,
              price: silverPrice4,
              timeText: timetext1,
              lesNum: silverLesson4,
              month: silverMonth4,
              coursePrice: silverDayPrice4),
        ],
      ),
    );
  }
}
