import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_colors.dart';
import 'package:food_delivery_app/widgets/app_small_text.dart';
import 'package:gap/gap.dart';
import 'package:responsive_screen_utils/responsive_screen_utils.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({
    super.key,
    required this.text,
  });

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;

  double textHeight = ResponsiveScreenUtil().setHeight(140);

  @override
  void initState() {
    super.initState();

    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(
        0,
        textHeight.toInt(),
      );
      secondHalf = widget.text.substring(
        textHeight.toInt() + 1,
        widget.text.length,
      );
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              children: [
                SmallText(
                  color: Colors.black,
                  height: ResponsiveScreenUtil().setHeight(1.8),
                  size: ResponsiveScreenUtil().setSp(12),
                  text:
                      hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
                ),
                const Gap(15),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SmallText(
                        text: hiddenText ? 'Show more' : 'Show less',
                        color: AppColors.mainColor,
                        size: ResponsiveScreenUtil().setSp(16),
                      ),
                      const Gap(10),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        size: ResponsiveScreenUtil().setHeight(20),
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
