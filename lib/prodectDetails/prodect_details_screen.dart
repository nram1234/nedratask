import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nedratask/models/cart_item_model.dart';

import '../cart/controller/cart_controller.dart';
import '../shareWidget/custom_button.dart';
import '../utils/app_colors.dart';
import '../utils/styles.dart';
import 'controller/prodect_details_controller.dart';
import 'widgets/circle_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProdectDetails extends GetView<ProdectDetailsController> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Column(children: [

          GetBuilder<ProdectDetailsController>(builder: (logic) {
            return Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                      onPageChanged: controller.updateindex,
                      scrollDirection: Axis.horizontal,
                      controller: controller.pageController,
                      itemCount: controller.list.length,
                      itemBuilder: (context, pos) {
                        controller.index = pos;
                        print("pos is ${pos}");
                        return controller.list[pos];
                      }),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleButton(
                            iconColor: black,
                            iconData: Icons.arrow_back_ios_new,
                          ),
                          CircleButton(
                            iconColor: redColor,
                            iconData: Icons.favorite,
                          )
                        ]),
                  ),
                  Align(alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, left: 30, bottom: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                              controller.list.length, (int index) {
                            return indicator(index == controller.index);
                          })),
                    ),
                  )


                ],
              ),
            );
          }),
          // Expanded(
          //   child: Container(
          //     decoration: const BoxDecoration(
          //         image: DecorationImage(
          //             image: AssetImage(
          //               "assets/pic1.jpg",
          //             ),
          //             fit: BoxFit.fill),
          //         borderRadius: BorderRadius.only(
          //             bottomLeft: Radius.circular(20),
          //             bottomRight: Radius.circular(20))),
          //     child: Padding(
          //       padding:
          //           const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          //       child: Column(
          //         children: [
          //           Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 CircleButton(
          //                   iconColor: black,
          //                   iconData: Icons.arrow_back_ios_new,
          //                 ),
          //                 CircleButton(
          //                   iconColor: redColor,
          //                   iconData: Icons.favorite,
          //                 )
          //               ]),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Warm Zipper",
                              style: bigTitleBlackTextStyle,
                            ),
                            Text(
                              "\$300,00",
                              style: bigTitleTextRedStyle,
                            ),
                          ],
                        ),
                        Text(
                          "Hooded Jacket",
                          style: normalBigTextStyle,
                        ),
                        RatingBar.builder(
                            itemSize: 15,
                            unratedColor: Colors.grey[300],
                            ignoreGestures: true,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            allowHalfRating: true,
                            direction: Axis.horizontal,
                            initialRating: 3.5,
                            itemCount: 5,
                            itemBuilder: (context, _) =>
                                Icon(
                                  Icons.star,
                                  color: yColor,
                                ),
                            onRatingUpdate: (rat) {
                              print(rat);
                            }),
                        Text(
                          "info about " * 100,
                          style: normalTextStyle,
                        )
                      ]),
                ),
              )),
          Padding(


            padding: const EdgeInsets.only(
                top: 8.0, left: 30, right: 30, bottom: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleButton(
                  iconColor: accentColor,
                  iconData: Icons.shopping_cart,
                  circlesize: 50,
                  iconsize: 40,
                ),
                CustomButton(
                  onClick: () {

Get.find<CartController>().additemcard(itemcard: Itemcard(name: "name ", count: 1, id: 1));




                  },
                  title: "Buy Now",
                  width: size.width * .6,
                  height: 50,
                  borderRadius: 20,
                  buttonColor: accentColor,
                  fontSize: 15,
                  titleColor: whiteColor,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

Widget indicator(bool isActive) {
  return Container(
    height: 10,
    child: AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive
          ? 10 : 8.0,
      width: isActive
          ? 12 : 8.0,
      decoration: BoxDecoration(border: isActive ? Border() : Border.all(
          width: 1, color: accentColor,),
        // boxShadow: [
        //   isActive
        //       ? BoxShadow(
        //     color: Color(0XFF2FB7B2).withOpacity(0.72),
        //     blurRadius: 4.0,
        //     spreadRadius: 1.0,
        //     offset: Offset(
        //       0.0,
        //       0.0,
        //     ),
        //   )
        //       : BoxShadow(
        //     color: Colors.transparent,
        //   )
        // ],
        shape: BoxShape.circle,
        color: isActive ? accentColor : Colors.transparent,
      ),
    ),
  );
}