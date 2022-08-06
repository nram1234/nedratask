import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProdectDetailsController extends GetxController{
  PageController pageController=PageController();
  List<Widget>list=[];
  int index=0;
  updateindex(  v){
    index=v;
    update();
  }


  @override
  void onInit() {
    super.onInit();
    for(int i=0 ;i<4;i++){

        list.add(Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/pic1.jpg",
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),

        ));


    }
  }

}