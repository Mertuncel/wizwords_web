import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';

import 'textType.dart';

class YellowButton extends StatelessWidget {
  const YellowButton({
    super.key,
    required this.text,
    required this.currentWidth,
    required this.press,
  });

  final String text;

  final double currentWidth;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: currentWidth * 0.020,
      ),
      child: InkWell(
        onTap: press,
        child: Container(
            height: currentWidth * 0.08,
            width: currentWidth * 0.20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: yellow),
            child: Padding(
              padding: EdgeInsets.only(top: currentWidth * 0.016),
              child: TextType2(
                shadowColor: Colors.black.withOpacity(0.7),
                text: text,
                color: white,
                size: currentWidth * 0.015,
                align: TextAlign.center,
              ),
            )),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.currentWidth,
    required this.text,
    required this.color,
    required this.height,
    required this.width,
    required this.size,
    required this.press,
  });
  final double currentWidth;
  final String text;
  final Color color;
  final double height;
  final double width;
  final double size;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(colors: gradient2)),
        height: height,
        width: width,
        child: Center(
          child: TextType1(
            text: text,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}
