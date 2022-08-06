import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/cart_item_model.dart';
import '../../utils/app_colors.dart';
import '../../utils/styles.dart';
import '../controller/cart_controller.dart';

class Item extends StatelessWidget {
  Itemcard itemcard;
int pos;
  Item({required this.itemcard,required this.pos});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: itemcard.ch, onChanged: (v) {
            Get.find<CartController>().chitemcard(pos: pos, val: v!);

          }, activeColor: accentColor),
          Container(
            height: 75,
            width: size.width * .2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/pic1.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Warm Zipper", style: bigTitleBlackTextStyle),
              Text("Hooded Jacket", style: bigTitleBlackTextStylewithoutBold),
              Text(
                "\$300.00",
                style: bigTitleTextRedStyle,
              )
            ],
          ),
          Spacer(
            flex: 2,
          ),
          GestureDetector(onTap: (){
         Get.find<CartController>().decitemcard(pos: pos);
          },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: Icon(Icons.remove, color: Colors.black.withOpacity(.5)),
            ),
          ),
          Text(itemcard.count.toString(), style: bigTitleBlackTextStyle),
          GestureDetector(onTap: (){
            Get.find<CartController>().incitemcard(pos: pos );
          },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: Icon(Icons.add, color: accentColor),
            ),
          )
        ],
      ),
    );
  }
}
