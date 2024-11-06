import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/b3.1_coursesPages/course_1_page/parts/Birebir.dart';

import '../../PhoneHomePage/phone_home_page.dart';
import '../../components/colors.dart';
import '../../components/footBar.dart';
import '../../components/topBar.dart';
import 'parts/OneDetails.dart';
import 'parts/OnePackages.dart';

class OnetoOnePage extends StatelessWidget {
  const OnetoOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: currentWidth > 600
          ? Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: gradient)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //TOP BAR

                    TopBar(currentWidth: currentWidth),

                    //İNDEX

                    Birebir(currentWidth: currentWidth),
                    OneDetails(currentWidth: currentWidth),
                    OnePackages(currentWidth: currentWidth),

                    // FOOTBAR
                    FootBar(currentWidth: currentWidth),
                  ],
                ),
              ),
            )

          // TELEFON GÖRÜNÜMÜ

          : const PhoneHomePage(),
    );
  }
}
