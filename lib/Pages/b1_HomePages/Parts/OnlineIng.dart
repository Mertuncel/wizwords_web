import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import '../../components/buttons.dart';

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
          TextType2(text: homeText5, color: brown, size: currentWidth * 0.050),
          TextType2(text: homeText6, color: brown, size: currentWidth * 0.018),
          SizedBox(
            height: currentWidth * 0.010,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              YellowButton(
                  press: () => context.go('/OneToOne'),
                  currentWidth: currentWidth,
                  text: buttonText1),
              SizedBox(width: currentWidth * 0.03),
              YellowButton(
                  press: () => context.go('/SpeakingClub'),
                  currentWidth: currentWidth,
                  text: buttonText2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              YellowButton(
                  press: () => context.go('/Group'),
                  currentWidth: currentWidth,
                  text: buttonText3),
              SizedBox(width: currentWidth * 0.03),
              YellowButton(
                  press: () => context.go('/Kids'),
                  currentWidth: currentWidth,
                  text: buttonText4),
            ],
          ),
        ],
      ),
    );
  }
}
