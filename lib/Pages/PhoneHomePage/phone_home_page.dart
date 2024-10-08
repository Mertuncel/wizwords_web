import 'package:flutter/material.dart';

class PhoneHomePage extends StatelessWidget {
  const PhoneHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: Center(
          child: Text(
        'Phone Page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
