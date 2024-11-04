import 'package:flutter/material.dart';

import '../../components/Info.dart';
import '../../components/texts.dart';

class Information extends StatelessWidget {
  const Information({
    super.key,
    required this.currentWidth,
  });
  final double currentWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWidth * 0.040),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Info(currentWidth: currentWidth, text: pointerText1),
          Info(currentWidth: currentWidth, text: pointerText2),
          Info(currentWidth: currentWidth, text: pointerText3),
          Info(currentWidth: currentWidth, text: pointerText4),
          Info(currentWidth: currentWidth, text: pointerText5),
          Info(currentWidth: currentWidth, text: pointerText6),
        ],
      ),
    );
  }
}
