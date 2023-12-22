import 'package:customer_app/utils/dimensions.dart';
import 'package:customer_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

   const IconAndText({super.key,
    required this.iconColor,
    required this.text,
    required this.icon,
   });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(icon,color: iconColor,size: Dimensions.iconSize24,),
          SizedBox(width: Dimensions.width10/2),
          SmallText(text: text,),
        ],
      ),
    );
  }
}
