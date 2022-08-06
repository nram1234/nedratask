import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/cart_screen.dart';
import '../tap_screen_1.dart';

class HomeController extends GetxController{



  List<Widget>screens=[TapScreen1(),CartScreen(),Container(),Container()];

 late Widget screen;
  int selectIndexBottom=0;
  int selectIndexCat=0;
List<String>cat=["All","Category","Top","Recommended"];
updateselectIndexCat({required int selectIndex}){
  this.selectIndexCat=selectIndex;
  update();
}
  updateselectIndexBottom({required int selectIndex}){
    this.selectIndexBottom=selectIndex;
    screen=screens[selectIndex];
    update();
  }

  @override
  void onInit() {
    super.onInit();
    screen=screens[0];
  }
}