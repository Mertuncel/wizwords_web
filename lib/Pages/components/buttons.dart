import 'package:flutter/material.dart';
import 'package:wizwords_web/Pages/components/colors.dart';
import 'package:wizwords_web/Pages/components/texts.dart';

import 'textType.dart';

class YellowButton extends StatefulWidget {
  const YellowButton({
    super.key,
    required this.text,
    required this.currentWidth,
    required this.press,
  });

  final String text;

  final double currentWidth;
  final Function() press;

  @override
  State<YellowButton> createState() => _YellowButtonState();
}

class _YellowButtonState extends State<YellowButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    // Container animasyon kısmı
    final hoveredTransform = Matrix4.identity()..translate(0, -8, .0);
    final transform = isHover ? hoveredTransform : Matrix4.identity();
    return Padding(
      padding: EdgeInsets.only(
        top: widget.currentWidth * 0.020,
      ),
      child: InkWell(
        onTap: widget.press,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHover = false;
            });
          },
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              transform: transform,
              height: widget.currentWidth * 0.08,
              width: widget.currentWidth * 0.20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: yellow),
              child: Padding(
                padding: EdgeInsets.only(top: widget.currentWidth * 0.016),
                child: TextType2(
                  shadowColor: Colors.black.withOpacity(0.7),
                  text: widget.text,
                  color: white,
                  size: widget.currentWidth * 0.015,
                  align: TextAlign.center,
                ),
              )),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.currentWidth,
    required this.text,
    required this.color,
    required this.height,
    required this.width,
    required this.size,
    required this.press,
  });
  final double currentWidth;
  final String text;
  final Color color;
  final double height;
  final double width;
  final double size;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(colors: gradient2)),
        height: height,
        width: width,
        child: Center(
          child: TextType1(
            text: text,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}

class GreenButton extends StatelessWidget {
  const GreenButton({
    super.key,
    required this.currentWidth,
    required this.press,
  });

  final double currentWidth;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: currentWidth * 0.029,
        width: currentWidth * 0.2 / 1.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(colors: gradient3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: currentWidth * 0.002),
              child: TextType1(
                  text: buttonText7, color: white, size: currentWidth * 0.012),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: currentWidth * 0.014,
              color: white,
            )
          ],
        ),
      ),
    );
  }
}
