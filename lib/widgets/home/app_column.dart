import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:food_delivery_app/widgets/app_large_text.dart';
import 'package:food_delivery_app/widgets/app_small_text.dart';
import 'package:food_delivery_app/widgets/icon_text.dart';
import 'package:gap/gap.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigText(
          color: Colors.black54,
          text: 'Cheese burger',
        ),
        const Gap(10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            const Gap(10),
            const SmallText(text: '4.5'),
            const Gap(10),
            const SmallText(text: '1280'),
            const Gap(10),
            const SmallText(text: 'Comments')
          ],
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ],
    );
  }
}
