import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/images.dart';

import '../../components/buttons.dart';
import '../../components/colors.dart';
import '../../components/textType.dart';

class CoursesButton extends StatelessWidget {
  const CoursesButton({
    super.key,
    required this.currentWidth,
    required this.text,
    required this.image,
    required this.subText,
    required this.press,
  });

  final double currentWidth;
  final String text;
  final String subText;
  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: white,
          height: currentWidth * 0.3,
          width: currentWidth * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: currentWidth * 0.018, right: currentWidth * 0.025),
                child: TextType1(
                  text: text,
                  color: brown,
                  size: currentWidth * 0.020,
                  align: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: currentWidth * 0.065, bottom: currentWidth * 0.040),
                child: TextType1(
                  text: subText,
                  color: green,
                  size: currentWidth * 0.010,
                  align: TextAlign.left,
                ),
              ),
              Image.asset(image),
            ],
          ),
        ),
        Positioned(
            top: currentWidth * 0.2 / 1.6,
            left: currentWidth * 0.020,
            child: GreenButton(
              currentWidth: currentWidth,
              press: press,
            ))
      ],
    );
  }
}

class CoursesChildButton extends StatelessWidget {
  const CoursesChildButton({
    super.key,
    required this.currentWidth,
    required this.text,
    required this.subText,
    required this.press,
  });

  final double currentWidth;
  final String text;
  final String subText;

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: white,
          height: currentWidth * 0.3,
          width: currentWidth * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: currentWidth * 0.018, right: currentWidth * 0.023),
                child: TextType1(
                  text: text,
                  color: brown,
                  size: currentWidth * 0.020,
                  align: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: currentWidth * 0.065, bottom: currentWidth * 0.010),
                child: TextType1(
                  text: subText,
                  color: green,
                  size: currentWidth * 0.010,
                  align: TextAlign.left,
                ),
              ),
              Image.asset(courseImg4),
            ],
          ),
        ),
        Positioned(
          top: currentWidth * 0.2 / 1.6,
          left: currentWidth * 0.020,
          child: GreenButton(
            currentWidth: currentWidth,
            press: press,
          ),
        ),
      ],
    );
  }
}
