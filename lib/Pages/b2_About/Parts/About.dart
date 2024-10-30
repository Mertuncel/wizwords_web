import 'package:flutter/widgets.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/textType.dart';

import 'package:wizwords_web/Pages/components/texts.dart';

import 'highlight.dart';
import '../../components/titleBox.dart';

class About extends StatelessWidget {
  const About({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: currentWidth * 0.060, top: currentWidth * 0.049),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: currentWidth * 0.2 / 1.5,
                    bottom: currentWidth * 0.020),
                child: TitleBox(
                  height: currentWidth * 0.035,
                  width: currentWidth * 0.2 / 1.5,
                  color: brown,
                  size: currentWidth * 0.020,
                  text: titleText1,
                ),
              ),
              SizedBox(height: currentWidth * 0.010),
              Padding(
                padding: EdgeInsets.only(
                  left: currentWidth * 0.004,
                ),
                child: TextType1(
                  text: aboutText1,
                  color: black,
                  size: currentWidth * 0.012,
                ),
              ),
              SizedBox(height: currentWidth * 0.013),
              TextType3(
                text: aboutText2,
                color: green,
                size: currentWidth * 0.012,
              ),
              SizedBox(height: currentWidth * 0.013),
              TextType3(
                text: aboutText3,
                color: green,
                size: currentWidth * 0.012,
              ),
            ],
          ),
        ),

        //HİGHLİGHST

        SizedBox(width: currentWidth * 0.2),

        Padding(
          padding: EdgeInsets.only(top: currentWidth * 0.080),
          child: Column(
            children: [
              Highlights(
                text1: highlightText1,
                text2: highlightSubText1,
                currentWidth: currentWidth,
              ),
              SizedBox(height: currentWidth * 0.015),
              Highlights(
                text1: highlightText2,
                text2: highlightSubText2,
                currentWidth: currentWidth,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: currentWidth * 0.049, left: currentWidth * 0.020),
          child: Column(
            children: [
              Highlights(
                text1: highlightText3,
                text2: highlightSubText3,
                currentWidth: currentWidth,
              ),
              SizedBox(height: currentWidth * 0.015),
              Highlights(
                text1: highlightText4,
                text2: highlightSubText4,
                currentWidth: currentWidth,
              ),
            ],
          ),
        )
      ],
    );
  }
}
