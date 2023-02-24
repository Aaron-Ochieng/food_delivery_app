import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/expandable_text_widget.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/app_large_text.dart';
import 'package:food_delivery_app/widgets/home/app_column.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: ResponsiveScreenUtil().setHeight(350),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/food03.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            left: ResponsiveScreenUtil().setWidth(20),
            right: ResponsiveScreenUtil().setWidth(20),
            top: ResponsiveScreenUtil().setWidth(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios_outlined,
                  onTap: () {
                    Get.back();
                  },
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: ResponsiveScreenUtil().setHeight(300),
            child: Container(
              padding: EdgeInsets.only(
                left: ResponsiveScreenUtil().setHeight(20),
                right: ResponsiveScreenUtil().setHeight(20),
                top: ResponsiveScreenUtil().setHeight(20),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    ResponsiveScreenUtil().setHeight(15),
                  ),
                  topRight: Radius.circular(
                    ResponsiveScreenUtil().setHeight(15),
                  ),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(),
                  Gap(ResponsiveScreenUtil().setHeight(15)),
                  const BigText(
                    color: Color.fromARGB(115, 0, 0, 0),
                    text: 'Introduce',
                  ),
                  Gap(ResponsiveScreenUtil().setHeight(20)),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              'Do you know how to cook food ? Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?Do you know how to cook food ?'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: ResponsiveScreenUtil().setHeight(100),
        padding: EdgeInsets.only(
          top: ResponsiveScreenUtil().setHeight(10),
          right: ResponsiveScreenUtil().setWidth(20),
          left: ResponsiveScreenUtil().setWidth(20),
          bottom: ResponsiveScreenUtil().setHeight(10),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              ResponsiveScreenUtil().setHeight(20),
            ),
            topRight: Radius.circular(
              ResponsiveScreenUtil().setHeight(20),
            ),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
              top: ResponsiveScreenUtil().setHeight(20),
              right: ResponsiveScreenUtil().setWidth(20),
              left: ResponsiveScreenUtil().setWidth(20),
              bottom: ResponsiveScreenUtil().setHeight(20),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                ResponsiveScreenUtil().setHeight(20),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.remove,
                  size: 15,
                ),
                Gap(15),
                BigText(color: Colors.black, text: '0'),
                Gap(15),
                Icon(
                  Icons.add,
                  size: 15,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: ResponsiveScreenUtil().setHeight(20),
              right: ResponsiveScreenUtil().setWidth(20),
              left: ResponsiveScreenUtil().setWidth(20),
              bottom: ResponsiveScreenUtil().setHeight(20),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  ResponsiveScreenUtil().setWidth(20),
                ),
                color: AppColors.mainColor),
            child: const BigText(
              color: Colors.black45,
              text: '\$10 | Add to cart',
              size: 12,
            ),
          )
        ]),
      ),
    );
  }
}
