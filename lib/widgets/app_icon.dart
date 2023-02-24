import 'package:flutter/material.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundcolor;
  final Color iconColor;
  final double size;
  final Function() onTap;
  const AppIcon({
    super.key,
    this.iconColor = const Color(0xfffcf4e4),
    this.backgroundcolor = const Color(0xff756d54),
    required this.icon,
    this.size = 30,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ResponsiveScreenUtil().setWidth(30),
        height: ResponsiveScreenUtil().setWidth(30),
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: BorderRadius.circular(
            ResponsiveScreenUtil().setWidth(15),
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: backgroundcolor,
          ),
        ),
      ),
    );
  }
}
