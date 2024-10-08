import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/textType.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

class LetsAndimg extends StatelessWidget {
  const LetsAndimg({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.040),

      // TEXT BÖLÜMÜ

      child: Row(
        children: [
          Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    left: currentWidth * 0.030,
                  ),
                  child: Texttype().text(
                      Texts().homeText1, colors().brown, currentWidth * 0.050)),
              Padding(
                padding: EdgeInsets.only(right: currentWidth * 0.045, top: 20),
                child: Texttype().text(
                    Texts().homeText2, colors().green, currentWidth * 0.008),
              ),
              Padding(
                padding: EdgeInsets.only(left: currentWidth * 0.06, top: 5),
                child: Texttype().text(
                    Texts().homeText3, colors().brown, currentWidth * 0.005),
              ),
              Padding(
                padding: EdgeInsets.only(right: currentWidth * 0.070, top: 20),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        height: currentWidth * 0.030,
                        width: currentWidth * 0.03,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xFFD0F0E0),
                              Color(0xFFeff0eb),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: currentWidth * 0.010,
                            left: currentWidth * 0.01),
                        child: Texttype().text(Texts().homeText4,
                            colors().brown, currentWidth * 0.010),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          //IMAGE

          Padding(
            padding: EdgeInsets.only(left: currentWidth * 0.15),
            child: Image.asset(
              images().anasayfaImg1,
              height: currentWidth * 0.25,
            ),
          ),
        ],
      ),
    );
  }
}
