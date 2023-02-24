import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final double height;

  const SmallText({
    super.key,
    this.color = const Color(0xffccc7c5),
    required this.text,
    this.size = 10,
    this.height = 1.4,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,
        height: height,
      ),
    );
  }
}
