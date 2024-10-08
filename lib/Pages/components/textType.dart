import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextType1 extends StatelessWidget {
  const TextType1(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      this.align});

  final String text;
  final Color color;
  final double size;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      text,
      style: GoogleFonts.merriweather(
          color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class TextType2 extends StatelessWidget {
  const TextType2({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    this.align,
    this.shadowColor,
  });

  final String text;
  final Color color;
  final double size;
  final TextAlign? align;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      text,
      style: GoogleFonts.montserrat(shadows: [
        Shadow(
            color: shadowColor ?? Colors.transparent,
            blurRadius: 4,
            offset: const Offset(3, 3)),
      ], color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
