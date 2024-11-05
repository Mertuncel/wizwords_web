import 'package:flutter/material.dart';

import 'colors.dart';
import 'images.dart';
import 'textType.dart';

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.text,
    required this.currentWidth,
  });
  final String text;
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: currentWidth * 0.050, top: currentWidth * 0.010),
      child: Row(children: [
        Image.asset(pointerImg, height: currentWidth * 0.012),
        SizedBox(width: currentWidth * 0.012),
        TextType3(text: text, color: black, size: currentWidth * 0.012),
      ]),
    );
  }
}

class PackInfo extends StatelessWidget {
  const PackInfo({
    super.key,
    required this.text,
    required this.currentWidth,
  });
  final String text;
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: currentWidth * 0.010, left: currentWidth * 0.010),
      child: Row(children: [
        Image.asset(arrow, height: currentWidth * 0.012),
        SizedBox(
          width: currentWidth * 0.005,
        ),
        TextType1(text: text, color: brown, size: currentWidth * 0.009),
      ]),
    );
  }
}
