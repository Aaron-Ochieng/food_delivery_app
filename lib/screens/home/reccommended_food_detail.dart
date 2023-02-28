import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/expandable_text_widget.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:food_delivery_app/utils/app_dimension.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/app_large_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions().pixelsHeight(300),
            toolbarHeight: Dimensions().pixelsHeight(60),
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.close,
                  onTap: () {},
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  onTap: () {},
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/food02.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                Dimensions().pixelsHeight(20),
              ),
              child: Container(
                width: Dimensions().fullwidth,
                padding: EdgeInsets.only(
                  top: Dimensions().pixelsHeight(5),
                  bottom: Dimensions().pixelsHeight(10),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xfff1f5f9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions().pixelsWidth(20)),
                    topRight: Radius.circular(Dimensions().pixelsWidth(20)),
                  ),
                ),
                child: Center(
                  child: BigText(
                    color: Colors.black,
                    text: "Chinese Side",
                    size: Dimensions().font(26),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions().pixelsWidth(20),
                    right: Dimensions().pixelsWidth(20),
                  ),
                  child: const ExpandableTextWidget(
                      text:
                          "Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend.Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend.Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend. Good chinesse food my friend."),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions().pixelsWidth(20) * 2.5,
              right: Dimensions().pixelsWidth(20) * 2.5,
              top: Dimensions().pixelsWidth(10),
              bottom: Dimensions().pixelsWidth(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  onTap: () {},
                  iconColor: AppColors.mainColor,
                  backgroundcolor: Colors.white,
                ),
                BigText(
                  color: AppColors.mainblackColor,
                  text: "\$12.88 X 0 ",
                  size: Dimensions().font(26),
                ),
                AppIcon(
                  icon: Icons.add,
                  onTap: () {},
                  iconColor: AppColors.mainColor,
                  backgroundcolor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions().pixelsHeight(100),
            padding: EdgeInsets.only(
              top: Dimensions().pixelsHeight(10),
              right: Dimensions().pixelsWidth(20),
              left: Dimensions().pixelsWidth(20),
              bottom: Dimensions().pixelsHeight(10),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimensions().pixelsHeight(20),
                  ),
                  topRight: Radius.circular(
                    Dimensions().pixelsHeight(20),
                  ),
                ),
                color: const Color.fromARGB(255, 248, 238, 238)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: Dimensions().pixelsHeight(20),
                      right: Dimensions().pixelsWidth(20),
                      left: Dimensions().pixelsWidth(20),
                      bottom: Dimensions().pixelsHeight(20),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimensions().pixelsHeight(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 25,
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: Dimensions().pixelsHeight(20),
                      right: Dimensions().pixelsWidth(20),
                      left: Dimensions().pixelsWidth(20),
                      bottom: Dimensions().pixelsHeight(20),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions().pixelsWidth(20),
                        ),
                        color: AppColors.mainColor),
                    child: const BigText(
                      color: Colors.black45,
                      text: '\$10 | Add to cart',
                      size: 20,
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
