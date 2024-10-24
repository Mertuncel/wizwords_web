import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/textType.dart';

import 'colors.dart';

class FaqButton extends StatelessWidget {
  const FaqButton({
    super.key,
    required this.currentWidth,
    required this.text,
    required this.indexText,
  });

  final double currentWidth;
  final String text;
  final String indexText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: currentWidth * 0.60,
          left: currentWidth * 0.030,
          top: currentWidth * 0.010),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ExpansionTile(
          minTileHeight: currentWidth * 0.030,
          childrenPadding: EdgeInsets.only(right: currentWidth * 0.1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: faqColor,
          collapsedBackgroundColor: faqColor,
          title:
              TextType1(text: text, color: brown, size: currentWidth * 0.010),
          controlAffinity: ListTileControlAffinity.leading,
          iconColor: green,
          children: [
            TextType1(text: indexText, color: green, size: currentWidth * 0.009)
          ],
        ),
      ),
    );
  }
}
