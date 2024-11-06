import 'package:flutter/material.dart';

import '../../PhoneHomePage/phone_home_page.dart';
import '../../components/colors.dart';
import '../../components/footBar.dart';
import '../../components/topBar.dart';
import 'parts/Speaking_title.dart';
import 'parts/Three_details.dart';
import 'parts/Three_packages.dart';

class SpeakingClubPage extends StatelessWidget {
  const SpeakingClubPage({super.key});

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

                    SpeakingTitle(currentWidth: currentWidth),
                    ThreeDetails(currentWidth: currentWidth),
                    ThreePackages(currentWidth: currentWidth),

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
