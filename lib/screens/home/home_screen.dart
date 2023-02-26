// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:food_delivery_app/utils/app_dimension.dart';
import 'package:food_delivery_app/widgets/app_large_text.dart';
import 'package:food_delivery_app/widgets/app_small_text.dart';
import 'package:food_delivery_app/widgets/home/food_page_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions().appHeight(context),
      width: Dimensions().appWidth(context),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(color: AppColors.mainColor, text: 'Kenya'),
                    Row(
                      children: const [
                        SmallText(color: Colors.black54, text: 'Nairobi'),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 10,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor),
                  child: const Center(
                      child: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
                )
              ],
            ),
          ),
          const Gap(15),
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPage(),
          )),
        ],
      )),
    );
  }
}
