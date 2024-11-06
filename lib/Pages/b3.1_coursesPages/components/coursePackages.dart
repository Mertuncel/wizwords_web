import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/Info.dart';
import 'package:wizwords_web/Pages/components/buttons.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

class Pack extends StatelessWidget {
  const Pack({
    super.key,
    required this.currentWidth,
    required this.title,
    required this.price,
    required this.lesNum,
    required this.coursePrice,
    required this.month,
    this.flag,
    required this.timeText,
  });
  final double currentWidth;
  final String title, price, lesNum, month, coursePrice, timeText;
  final Image? flag;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: currentWidth * 0.3,
          width: currentWidth * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: cream,
              border: Border.all(color: green)),
          child: Padding(
            padding: EdgeInsets.only(top: currentWidth * 0.030),
            child: Column(
              children: [
                TextType1(
                    text: title, color: green, size: currentWidth * 0.020),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: currentWidth * 0.010),
                      child: TextType1(
                          text: price,
                          color: black,
                          size: currentWidth * 0.020),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: currentWidth * 0.020),
                      child: Image.asset(
                        tlImg,
                        height: currentWidth * 0.010,
                      ),
                    )
                  ],
                ),
                TextType3(
                    text: teksefer, color: green, size: currentWidth * 0.009),
                const Divider(color: green),
                PackInfo(text: lesNum, currentWidth: currentWidth),
                PackInfo(text: month, currentWidth: currentWidth),
                PackInfo(text: timeText, currentWidth: currentWidth),
                PackInfo(text: coursePrice, currentWidth: currentWidth),
                Padding(
                  padding: EdgeInsets.only(top: currentWidth * 0.050),
                  child: PackButton(currentWidth: currentWidth, press: () {}),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: currentWidth * 0.012,
          child: flag ?? const SizedBox(),
        )
      ],
    );
  }
}
