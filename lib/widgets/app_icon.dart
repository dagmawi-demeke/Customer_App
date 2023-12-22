import 'package:customer_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double size;
  final double iconSize;

  const AppIcon(
      {super.key,
      required this.icon,
      this.iconColor = const Color(0xFF756d54),
      this.backgroundColor = const Color(0xFFFCf4e4),
      this.size = 40,
      this.iconSize = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundColor,
      ),
      child: Center(
          child: Icon(
        icon,
        color: iconColor,
        size: iconSize==0? Dimensions.iconSize16:iconSize,
      )),
    );
  }
}
