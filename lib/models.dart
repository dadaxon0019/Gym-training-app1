import 'package:flutter/material.dart';

class Card {
  final Image img;
  final String mainText;
  final String subTitle;

  Card({
    required this.img,
    required this.mainText,
    required this.subTitle,
  });
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage('img/cardimg1.png'),
            fit: BoxFit.cover,
          )),
    );
  }
}
