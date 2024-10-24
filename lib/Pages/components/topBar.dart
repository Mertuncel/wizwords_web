import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:wizwords_web/Pages/components/buttons.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/textType.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //WW LOGO

      padding: EdgeInsets.only(left: currentWidth * 0.030, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => context.go('/'),
            child: Image.asset(
              textLogo,
              height: currentWidth * 0.055,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),

            // BUTTONS

            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () => context.go('/'),
                      child: TextType1(
                          text: 'AnaSayfa',
                          color: brown,
                          size: currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () => context.go('/About'),
                      child: TextType1(
                          text: 'Hakkımızda',
                          color: brown,
                          size: currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: TextType1(
                          text: 'Kurslar',
                          color: brown,
                          size: currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: TextType1(
                          text: 'Ürünler',
                          color: brown,
                          size: currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: TextType1(
                          text: 'Eğitmen Ol',
                          color: brown,
                          size: currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.015),
                  child: GradientButton(
                      currentWidth: currentWidth,
                      text: 'İletişime\n    Geç',
                      color: brown,
                      height: currentWidth * 0.040,
                      width: currentWidth * 0.09,
                      size: currentWidth * 0.010,
                      press: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
