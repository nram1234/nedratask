import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nedratask/cart/widgets/item.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';
import 'controller/cart_controller.dart';

class CartScreen extends GetView<CartController>{
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new, color: black, size: 20),
          actions: [
            Icon(
              Icons.more_horiz,
              color: Colors.black,
            )
          ],
          centerTitle: true,
          title: Text("Cart", style: normalTextStyle),
          elevation: 0,
          backgroundColor: Theme
              .of(context)
              .scaffoldBackgroundColor),
      body: GetBuilder<CartController>(builder: (logic) {
        return ListView.builder(
            itemCount: logic.cart.length,
            itemBuilder: (context, pos) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Item(itemcard: logic.cart[pos],pos: pos),
              );
            });
      }),
    );
  }
}
