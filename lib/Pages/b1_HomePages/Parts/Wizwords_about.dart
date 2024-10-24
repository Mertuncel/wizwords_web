import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../components/buttons.dart';

class WizwordsAbout extends StatelessWidget {
  const WizwordsAbout({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: currentWidth * 0.10),
          child: Image.asset(
            anasayfaImg3,
            height: currentWidth * 0.35,
          ),
        ),
        SizedBox(
          width: currentWidth * 0.52,
          child: Stack(
            children: [
              Positioned(
                right: currentWidth * 0,
                top: currentWidth * 0.075,
                child: Image.asset(
                  anasayfaImg4,
                  height: currentWidth * 0.13,
                ),
              ),
              Column(
                children: [
                  //Text1

                  Padding(
                    padding: EdgeInsets.only(
                        top: currentWidth * 0.020, left: currentWidth * 0.10),
                    child: TextType1(
                        text: homeText7,
                        color: brown,
                        size: currentWidth * 0.030),
                  ),

                  //Text2

                  Padding(
                    padding: EdgeInsets.only(
                        left: currentWidth * 0.15, top: currentWidth * 0.030),
                    child: TextType1(
                        text: homeText8,
                        color: green,
                        size: currentWidth * 0.020),
                  ),

                  //Text3

                  Padding(
                    padding: EdgeInsets.only(
                        left: currentWidth * 0.12, top: currentWidth * 0.020),
                    child: TextType1(
                      text: homeText9,
                      color: brown,
                      size: currentWidth * 0.018,
                    ),
                  ),

                  // button

                  Padding(
                    padding: EdgeInsets.only(
                        left: currentWidth * 0.10, top: currentWidth * 0.030),
                    child: GradientButton(
                      press: () {},
                      currentWidth: currentWidth,
                      color: brown,
                      size: currentWidth * 0.014,
                      height: currentWidth * 0.040,
                      width: currentWidth * 0.20,
                      text: buttonText5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
