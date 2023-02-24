// ignore_for_file: avoid_print

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/food_detail_page.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:food_delivery_app/widgets/app_large_text.dart';
import 'package:food_delivery_app/widgets/app_small_text.dart';
import 'package:food_delivery_app/widgets/home/app_column.dart';
import 'package:food_delivery_app/widgets/icon_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

PageController _pageController = PageController(viewportFraction: 0.85);
var _currentPageValue = 0.0;
Matrix4 _matrix = Matrix4.identity();
double _scaleFactor = 0.8;
double _height = ResponsiveScreenUtil().setHeight(220);

class _FoodPageState extends State<FoodPage> {
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // color: Colors.pink,
          height: ResponsiveScreenUtil().setHeight(320),
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            itemBuilder: (context, index) {
              if (index == _currentPageValue.floor()) {
                var currentScale =
                    1 - (_currentPageValue - index) * (1 - _scaleFactor);
                var currentTrans = _height * (1 - currentScale) / 2;

                _matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                  ..setTranslationRaw(0, currentTrans, 0);
              } else if (index == _currentPageValue.floor() + 1) {
                var currentScale = _scaleFactor -
                    (_currentPageValue - index + 1) * (1 - _scaleFactor);
                var currentTrans = _height * (1 - currentScale) / 2;
                _matrix = Matrix4.diagonal3Values(1, currentScale, 1);
                _matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                  ..setTranslationRaw(0, currentTrans, 0);
              } else if (index == _currentPageValue.floor() - 1) {
                var currentScale =
                    1 - (_currentPageValue - index) * (1 - _scaleFactor);
                var currentTrans = _height * (1 - currentScale) / 2;
                _matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                  ..setTranslationRaw(0, currentTrans, 0);
              } else {
                var currentScale = 0.8;
                _matrix = Matrix4.diagonal3Values(1, currentScale, 1)
                  ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
              }
              return Transform(
                transform: _matrix,
                child: Stack(
                  children: [
                    Container(
                      height: ResponsiveScreenUtil().setHeight(220),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: index.isEven
                            ? Colors.pinkAccent
                            : Colors.yellowAccent,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/food09.jpg'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: ResponsiveScreenUtil().setHeight(100),
                        margin: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 45),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xffe8e8e8),
                                  blurRadius: 5,
                                  offset: Offset(0, 3)),
                            ]),
                        child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, right: 15, left: 15),
                            child: const AppColumn()),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: Row(children: const [
            BigText(
              text: 'Popular',
              color: Colors.black,
              size: 15,
            ),
            Gap(20),
            SmallText(text: 'Food pairing')
          ]),
        ),
        //List of food and images
        SizedBox(
          height: ResponsiveScreenUtil().setHeight(900),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            itemCount: 10,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const FoodDetailPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                      Container(
                        width: ResponsiveScreenUtil().setWidth(120),
                        height: ResponsiveScreenUtil().setHeight(120),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/food03.jpg'))),
                      ),
                      Expanded(
                        child: Container(
                          height: ResponsiveScreenUtil().setHeight(100),
                          width: ResponsiveScreenUtil().setHeight(200),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, right: 10, bottom: 5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const BigText(
                                    color: Colors.black,
                                    text: 'Tasty nutricious burgers in USA',
                                    size: 15,
                                  ),
                                  const SmallText(
                                      text: 'With english characteristics'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: 'Normal',
                                        iconColor: AppColors.yellowColor,
                                      ),
                                      IconTextWidget(
                                        icon: Icons.location_on,
                                        text: '1.7 Km',
                                        iconColor: AppColors.mainColor,
                                      ),
                                      IconTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: '32 min',
                                        iconColor: AppColors.iconColor2,
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
