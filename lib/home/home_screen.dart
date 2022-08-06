import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';
import 'controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: GetBuilder<HomeController>(builder: (logic) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child:


          controller.screen
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',backgroundColor: accentColor,
          child: new Icon(Icons.qr_code_scanner_outlined),
          elevation: 4.0,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.home,
                      color: controller.selectIndexBottom == 0
                          ? accentColor
                          : black.withOpacity(.5)),
                  onPressed: () {
                    controller.updateselectIndexBottom(selectIndex: 0);
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.shopping_cart,  color: controller.selectIndexBottom == 1
                      ? accentColor
                      : black.withOpacity(.5)),
                  onPressed: () {
                    controller.updateselectIndexBottom(selectIndex: 1);
                  },
                ),
              ),
              Expanded(child: new Text('')),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.favorite,  color: controller.selectIndexBottom == 2
                      ? accentColor
                      : black.withOpacity(.5)),
                  onPressed: () {
                    controller.updateselectIndexBottom(selectIndex: 2);
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.person,  color: controller.selectIndexBottom == 3
                      ? accentColor
                      : black.withOpacity(.5)),
                  onPressed: () {
                    controller.updateselectIndexBottom(selectIndex: 3);
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    }));
  }
}
