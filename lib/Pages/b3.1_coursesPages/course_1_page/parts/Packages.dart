import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../../components/images.dart';
import '../../components/coursePackages.dart';

class Packages extends StatelessWidget {
  const Packages({
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
              title: bronzeText1,
              price: bronzeText2,
              lesNum: bronzeText3,
              month: bronzeText4,
              coursePrice: bronzeText5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: currentWidth * 0.030),
            child: Pack(
              currentWidth: currentWidth,
              title: goldText1,
              price: goldText2,
              lesNum: goldText3,
              month: goldText4,
              coursePrice: goldText5,
              flag: Image.asset(ribbon, height: currentWidth * 0.050),
            ),
          ),
          Pack(
              currentWidth: currentWidth,
              title: silverText1,
              price: silverText2,
              lesNum: silverText3,
              month: silverText4,
              coursePrice: silverText5),
        ],
      ),
    );
  }
}
