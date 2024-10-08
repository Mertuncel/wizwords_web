import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

class OnlineIng extends StatelessWidget {
  const OnlineIng({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.060),
      child: Column(
        children: [
          Texttype()
              .text2(Texts().homeText5, colors().brown, currentWidth * 0.050),
          Texttype()
              .text2(Texts().homeText6, colors().brown, currentWidth * 0.018),
          Button(
            height: currentWidth * 0.07,
            width: currentWidth * 0.20,
            buttonColor: colors().yellow,
            text: Texts().buttonText1,
            textColor: colors().white,
            size: currentWidth * 0.015,
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.textColor,
    required this.size,
    required this.buttonColor,
  });

  final double height;
  final double width;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: buttonColor),
      child: Texttype().text2(text, textColor, size),
    );
  }
}
