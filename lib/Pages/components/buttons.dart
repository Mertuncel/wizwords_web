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
            height: currentWidth * 0.07,
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
