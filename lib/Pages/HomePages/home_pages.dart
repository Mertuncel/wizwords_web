import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/HomePages/Parts/ImageOne.dart';
import 'package:wizwords_web/Pages/HomePages/Parts/OnlineIng.dart';
import 'package:wizwords_web/Pages/PhoneHomePage/phone_home_page.dart';

import 'Parts/LetsAndImg.dart';
import '../components/footBar.dart';
import '../components/topBar.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: currentWidth > 600
          ? Expanded(
              //ANA ARKA PLAN

              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFf4f3ef), Color(0xFFe4eae0)],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //TOP BAR
                      TopBar(currentWidth: currentWidth),

                      LetsAndimg(currentWidth: currentWidth),
                      ImageOne(currentWidth: currentWidth),

                      OnlineIng(
                        currentWidth: currentWidth,
                      ),

                      // FOOTBAR

                      FoodBar(currentWidth: currentWidth),
                    ],
                  ),
                ),
              ),
            )

          // TELEFON GÖRÜNÜMÜ

          : const PhoneHomePage(),
    );
  }
}
