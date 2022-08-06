import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';
import 'controller/home_controller.dart';

class TapScreen1 extends GetView<HomeController> {
  const TapScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 8, left: 8),
                decoration: BoxDecoration(
                  color: gColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                            size: 30, color: gColor.withOpacity(.8)),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Hint here",
                        hintStyle: bigTitleBlackTextStylewithoutBold,
                        isDense: true)),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 50,
              height: 50,
              child: Center(
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: gColor,
                  )),
              decoration: BoxDecoration(
                color: gColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Container(
        height: 100,
        decoration: BoxDecoration(
            color: gColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(
                  "assets/pic2.jpg",
                ),
                fit: BoxFit.fill)),
      ),
      SizedBox(
        height: 8,
      ),
      GetBuilder<HomeController>(builder: (logic) {
        return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List<Widget>.generate(
                  controller.cat.length,
                      (index) =>
                      GestureDetector(
                        onTap: () {
                          controller.updateselectIndexCat(selectIndex: index);
                          print(index);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: controller.selectIndexCat == index
                                  ? accentColor
                                  : gColor.withOpacity(.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: Text(
                                  controller.cat[index],
                                  style: TextStyle(
                                    color: controller.selectIndexCat == index
                                        ? whiteColor
                                        : black.withOpacity(.5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                )),
                          ),
                        ),
                      )),
            ));
      }),


    Expanded(
      child: MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,itemCount: 10,
      itemBuilder: (context, index) {

      return Padding(
        padding:   EdgeInsets.only(top: index==1?50:0),
        child: GestureDetector(onTap: (){
          Get.toNamed("ProdectDetails");
        },child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 200,
              decoration:   BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/pic1.jpg",
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20)),

            ),
            Text("Warm Zipper", style: bigTitleBlackTextStylewithoutBold),

            Text(
              "\$300.00",
              style: bigTitleTextRedStyle,
            ) ],
        )),
      );
      },
      ),
    )


    ]);
  }
}
