import 'package:customer_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  final double size;
  final double height;

  SmallText(
      {super.key,
      required this.text,
      this.color = const Color(0xffccc7c5),
      this.height = 1.2,
      this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font12 : size,
          fontFamily: 'Roboto',
          height: height),
    );
  }
}
