import 'package:flutter/widgets.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/textType.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
    required this.currentWith,
    required this.text,
    required this.subtext,
    required this.image,
  });

  final double currentWith;
  final String text, subtext, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: currentWith * 0.065),
      child: Container(
        height: currentWith * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: gradient4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: currentWith * 0.005, left: currentWith * 0.035),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextType1(
                    text: text,
                    color: brown,
                    size: currentWith * 0.028,
                    align: TextAlign.left,
                  ),
                  TextType3(
                    text: subtext,
                    color: green,
                    size: currentWith * 0.015,
                    align: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: currentWith * 0.030),
              child: Image.asset(image),
            )
          ],
        ),
      ),
    );
  }
}
