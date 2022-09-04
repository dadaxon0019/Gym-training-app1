import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSmallText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppSmallText(
      {super.key, this.size = 13, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}