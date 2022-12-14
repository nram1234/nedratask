import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onClick;
  String title;
  Color titleColor;
  Color buttonColor;
  double height;
  double width;
  double borderRadius;
  double fontSize;
  FontWeight fontWeight;
  CustomButton(
      {required this.onClick,this.fontWeight=FontWeight.normal,this.fontSize=12,this.borderRadius=10,
      required this.title,
      this.titleColor = Colors.white,
      this.buttonColor = accentColor,
      this.height = 30,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onClick,
      child: Container(padding:const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius), color: buttonColor),
        width: width,
        height: height,
        child: Center(
            child: FittedBox(
              child: Text(
          title,
          style: TextStyle(color: titleColor,fontSize: fontSize,fontWeight: fontWeight),
        ),
            )),
      ),
    );
  }
}
