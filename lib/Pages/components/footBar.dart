import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wizwords_web/Pages/components/images.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

class FoodBar extends StatelessWidget {
  const FoodBar({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    //DİVİDER

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: currentWidth * 0.45,
              height: 2,
              color: Colors.black,
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Container(
              width: currentWidth * 0.45,
              height: 2,
              color: Colors.black,
            ),
          ],
        ),

        // İLETİŞİM BİLGİLERİ

        Padding(
          padding: EdgeInsets.only(left: currentWidth * 0.020),
          child: Row(
            children: [
              Column(
                children: [
                  text(iletisim, currentWidth * 0.014),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: currentWidth * 0.002),
                    child: text(mail, currentWidth * 0.009),
                  ),
                  text(phone, currentWidth * 0.009),

                  //SOSYAL MEDYA İCONLARI

                  Padding(
                    padding: EdgeInsets.only(top: currentWidth * 0.003),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: icons(instaIcon, currentWidth * 0.010)),
                        InkWell(
                            onTap: () {},
                            child: icons(tiktokIcon, currentWidth * 0.010)),
                        InkWell(
                            onTap: () {},
                            child: icons(mailIcon, currentWidth * 0.010)),
                      ],
                    ),
                  ),
                ],
              ),

              //QUİCK LİNKS

              Padding(
                padding: EdgeInsets.only(
                    left: currentWidth * 0.050, top: currentWidth * 0.010),
                child: Column(
                  children: [
                    text('Quick Links', currentWidth * 0.014),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: currentWidth * 0.002),
                      child: InkWell(
                          onTap: () {},
                          child:
                              text('Terms & Conditions', currentWidth * 0.009)),
                    ),
                    InkWell(
                        onTap: () {},
                        child: text('privacy Policy', currentWidth * 0.009)),
                    SizedBox(
                      height: currentWidth * 0.025,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget text(String text, double size) {
  return Text(
    text,
    style: GoogleFonts.merriweather(
      fontWeight: FontWeight.bold,
      fontSize: size,
      color: const Color(0xFF480c21),
    ),
  );
}

Widget icons(String images, double height) {
  return Padding(
    padding: const EdgeInsets.only(right: 7),
    child: Image.asset(
      images,
      height: height,
    ),
  );
}
