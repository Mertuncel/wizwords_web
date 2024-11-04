import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';

import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../parts/Information.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.080),
      child: Column(
        children: [
          TextType1(
              text: courseDetails, color: brown, size: currentWidth * 0.040),
          TextType3(
            text: courseDetailText1,
            color: black,
            size: currentWidth * 0.020,
            align: TextAlign.center,
          ),
          Row(
            children: [
              Information(currentWidth: currentWidth),
            ],
          )
        ],
      ),
    );
  }
}
