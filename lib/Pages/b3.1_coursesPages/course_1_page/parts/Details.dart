import 'package:flutter/material.dart';

import '../../../components/colors.dart';
import '../../../components/images.dart';
import '../../../components/textType.dart';
import '../../../components/texts.dart';
import '../../components/Information.dart';

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
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Information(currentWidth: currentWidth),
              Image.asset(cImage1_2, height: currentWidth * 0.1 / 0.75),
            ],
          )
        ],
      ),
    );
  }
}
