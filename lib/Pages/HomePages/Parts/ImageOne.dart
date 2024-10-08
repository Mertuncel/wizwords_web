import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/images.dart';

class ImageOne extends StatelessWidget {
  const ImageOne({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.1),
      child: Image.asset(
        images().anasayfaImg2,
        height: currentWidth * 0.4,
      ),
    );
  }
}
