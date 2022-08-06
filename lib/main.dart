import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nedratask/routes/app_routes.dart';
import 'package:nedratask/utils/app_colors.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,



      ),
      initialRoute:Routes.HomeScreen, //Routes.root,

      getPages: AppPages.pages,
    );
  }
}
