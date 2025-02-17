import 'package:flutter/material.dart';

class GameItemWidget extends StatelessWidget {
  final String image;

  const GameItemWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(image, fit: BoxFit.fill),
    );
  }
}
