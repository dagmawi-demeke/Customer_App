import 'package:customer_app/utils/colors.dart';
import 'package:customer_app/utils/dimensions.dart';
import 'package:customer_app/widgets/big_text.dart';
import 'package:customer_app/widgets/icon_and_text_widget.dart';
import 'package:customer_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final double size;
  const AppColumn({super.key, required this.text, this.size=0});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       BigText(text: text,size: size==0? Dimensions.font20:size,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      color: AppColors.mainColor,
                      size: Dimensions.iconSize16,
                    ))),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "245"),
            SizedBox(
              width: Dimensions.width10 / 2,
            ),
            SmallText(text: "Comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              text: "Normal",
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
            ),
            IconAndText(
              text: "13KM",
              icon: Icons.location_on,
              iconColor: AppColors.iconColor2,
            ),
            IconAndText(
              text: "32min",
              icon: Icons.access_time,
              iconColor: AppColors.mainColor,
            ),
          ],
        )
      ],
    );
  }
}
