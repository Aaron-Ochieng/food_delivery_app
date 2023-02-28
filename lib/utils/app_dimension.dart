import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

class Dimensions {
  final double fullwidth = double.maxFinite;

  appWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  appHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  pixelsHeight(double pixels) {
    return ResponsiveScreenUtil().setHeight(pixels);
  }

  pixelsWidth(double pixels) {
    return ResponsiveScreenUtil().setWidth(pixels);
  }

  font(double pixels) {
    return ResponsiveScreenUtil().setSp(pixels);
  }
}
