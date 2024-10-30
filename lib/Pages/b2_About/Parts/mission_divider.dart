import 'package:flutter/widgets.dart';

import '../../components/colors.dart';

class MissionDivider extends StatelessWidget {
  const MissionDivider({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: currentWidth * 0.0040,
      width: currentWidth * 0.2 / 1.5,
      color: green,
    );
  }
}
