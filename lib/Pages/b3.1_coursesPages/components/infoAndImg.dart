import 'package:flutter/material.dart';

import 'Information.dart';

class InfoandImg extends StatelessWidget {
  const InfoandImg({
    super.key,
    required this.currentWidth,
    required this.img,
    required this.size,
  });

  final double currentWidth;
  final String img;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Information(currentWidth: currentWidth),
        Padding(
          padding: EdgeInsets.only(right: currentWidth * 0.070),
          child: Image.asset(
            img,
            height: size,
          ),
        ),
      ],
    );
  }
}
