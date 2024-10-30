import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';
import 'package:wizwords_web/Pages/components/titleBox.dart';

import '../../components/colors.dart';
import 'mission_divider.dart';

class Mission extends StatelessWidget {
  const Mission({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: currentWidth * 0.018,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleBox(
                height: currentWidth * 0.035,
                width: currentWidth * 0.2 / 1.4,
                color: brown,
                size: currentWidth * 0.020,
                text: titleText2,
              ),
              SizedBox(height: currentWidth * 0.050),
              TextType1(
                  text: missionText1, color: brown, size: currentWidth * 0.050),
              TextType2(
                  text: missionText2, color: brown, size: currentWidth * 0.013),
              SizedBox(height: currentWidth * 0.050),
              TextType1(
                  text: missionText3, color: brown, size: currentWidth * 0.050),
              TextType2(
                  text: missionText4, color: brown, size: currentWidth * 0.013),
              SizedBox(height: currentWidth * 0.050),
              TextType1(
                  text: missionText5, color: brown, size: currentWidth * 0.050),
              TextType2(
                  text: missionText6, color: brown, size: currentWidth * 0.013),
              SizedBox(height: currentWidth * 0.050),
              TextType1(
                  text: missionText7, color: brown, size: currentWidth * 0.050),
              TextType2(
                  text: missionText8, color: brown, size: currentWidth * 0.013),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: currentWidth * 0.090),
          child: Column(
            children: [
              Image.asset(missionImg, height: currentWidth * 0.40),
              Padding(
                padding: EdgeInsets.only(top: currentWidth * 0.060),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MissionDivider(currentWidth: currentWidth),
                    SizedBox(height: currentWidth * 0.030),
                    TextType3(
                        text: missionText9,
                        color: green,
                        size: currentWidth * 0.014),
                    SizedBox(height: currentWidth * 0.015),
                    TextType3(
                        text: missionText10,
                        color: green,
                        size: currentWidth * 0.014),
                    SizedBox(height: currentWidth * 0.030),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
