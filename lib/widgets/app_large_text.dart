import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final TextOverflow overflow;
  const BigText(
      {super.key,
      required this.color,
      required this.text,
      this.size = 20,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
