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
          left: currentWidth * 0.050, top: currentWidth * 0.013),
      child: Row(
        children: [
          Image.asset(pointerImg, height: currentWidth * 0.018),
          SizedBox(width: currentWidth * 0.015),
          TextType3(text: text, color: black, size: currentWidth * 0.018),
        ],
      ),
    );
  }
}
