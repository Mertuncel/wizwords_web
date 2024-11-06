import 'package:flutter/material.dart';

import '../../components/colors.dart';
import '../../components/textType.dart';
import '../../components/texts.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.currentWidth,
    required this.text,
  });

  final double currentWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.080),
      child: Column(
        children: [
          TextType1(text: text, color: brown, size: currentWidth * 0.040),
          TextType3(
              text: courseDetailText1,
              color: black,
              size: currentWidth * 0.020,
              align: TextAlign.center),
        ],
      ),
    );
  }
}
