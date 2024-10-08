import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Image.asset(
            images().textLogo,
            height: currentWidth * 0.055,
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
                      onTap: () {},
                      child: Texttype()
                          .text('AnaSayfa', brown, currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: Texttype()
                          .text('Hakkımızda', brown, currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: Texttype()
                          .text('Kurslar', brown, currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: Texttype()
                          .text('Ürünler', brown, currentWidth * 0.010)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: currentWidth * 0.030),
                  child: InkWell(
                      onTap: () {},
                      child: Texttype()
                          .text('Eğitmen Ol', brown, currentWidth * 0.010)),
                ),
                currentWidth > 1100
                    ? button(() {}, 'İletişime\n     Geç', currentWidth * 0.080,
                        70, brown)
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget button(
    Function() press, String text, double width, double height, Color color) {
  return Padding(
    padding: const EdgeInsets.only(right: 50),
    child: InkWell(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
                colors: [Color(0xFFd0f0e0), Color(0xFFe7dbce)])),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.merriweather(
              color: color, fontWeight: FontWeight.bold),
        )),
      ),
    ),
  );
}
