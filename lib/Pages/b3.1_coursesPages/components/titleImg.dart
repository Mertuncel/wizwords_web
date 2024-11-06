import 'package:flutter/material.dart';

class TitleImg extends StatelessWidget {
  const TitleImg({
    super.key,
    required this.currentWidth,
    required this.img,
    required this.size,
  });

  final double currentWidth, size;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: currentWidth * 0.030,
        top: currentWidth * 0.030,
        child: Image.asset(img, height: size));
  }
}
