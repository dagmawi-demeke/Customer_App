

import 'package:customer_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final TextOverflow overflow;
  const BigText({super.key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.overflow = TextOverflow.ellipsis,
    this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto'
      ),
    );
  }
}
