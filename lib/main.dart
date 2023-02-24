import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/main_screen.dart';
import 'package:get/get.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreenUtilInit(
      allowFontScaling: true,
      designSize: const Size(360, 690),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xfff1f5f9),
          fontFamily: 'Roboto',
        ),
        home: const MainScreen(),
      ),
    );
  }
}
