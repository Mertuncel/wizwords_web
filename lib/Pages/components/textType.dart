import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texttype {
  Texttype();

  Widget text(String text, Color color, double size) {
    return Text(
      text,
      style: GoogleFonts.merriweather(
          color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }

  text2(String text, Color color, double size) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.montserrat(
            color: color, fontSize: size, fontWeight: FontWeight.bold),
      ),
    );
  }
}
