import 'package:flutter/widgets.dart';

import 'colors.dart';
import 'textType.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    super.key,
    required this.height,
    required this.width,
    required this.size,
    required this.text,
    required this.color,
  });

  final double height;
  final double width;
  final double size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: gradient2)),
      height: height,
      width: width,
      child: Center(child: TextType1(text: text, color: color, size: size)),
    );
  }
}
