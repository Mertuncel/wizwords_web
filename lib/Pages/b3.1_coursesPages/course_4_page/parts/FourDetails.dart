import 'package:flutter/material.dart';

import '../../../components/images.dart';
import '../../../components/texts.dart';
import '../../components/details.dart';
import '../../components/infoAndImg.dart';

class FourDetails extends StatelessWidget {
  const FourDetails({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Details(currentWidth: currentWidth, text: courseDetails),
        InfoandImg(
            currentWidth: currentWidth,
            img: cImage4_2,
            size: currentWidth * 0.2 / 1.1)
      ],
    );
  }
}
