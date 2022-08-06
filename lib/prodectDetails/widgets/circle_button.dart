import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CircleButton extends StatelessWidget {
 final IconData iconData;
final  Color iconColor;
final double circlesize;
 final double iconsize;

 CircleButton({required this.iconData,required this.iconColor,this.circlesize=25,this.iconsize=15});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: circlesize,
      width: circlesize,
      decoration: const BoxDecoration(shape: BoxShape.circle,color: gColor),
      child: Center(child: Icon(iconData, color: iconColor,size: iconsize)),
    );
  }
}
