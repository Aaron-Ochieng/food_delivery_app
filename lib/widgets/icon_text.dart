import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_small_text.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
