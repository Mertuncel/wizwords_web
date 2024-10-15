import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';

import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../components/faq.button.dart';

class FAQ extends StatelessWidget {
  const FAQ({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: currentWidth * 0.015),
            child: TextType1(
                text: homeText10, color: brown, size: currentWidth * 0.035)),

        //---------------------------------------------------------------

        FaqButton(
            currentWidth: currentWidth, text: faqText1, indexText: faqText2),
        FaqButton(
            currentWidth: currentWidth, text: faqText1, indexText: faqText2),
        FaqButton(
            currentWidth: currentWidth, text: faqText1, indexText: faqText2),
      ],
    );
  }
}
