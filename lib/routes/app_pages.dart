
import 'package:get/get.dart';
import 'package:nedratask/routes/app_routes.dart';

import '../cart/binding/cart_binding.dart';
import '../cart/cart_screen.dart';
import '../home/binding/Home_binding.dart';
import '../home/home_screen.dart';
import '../prodectDetails/binding/prodect_details_binding.dart';
import '../prodectDetails/prodect_details_screen.dart';

class AppPages{
  static final pages = [
    GetPage(
      name: Routes.prodectDetails,
      page: () =>   ProdectDetails(),
      binding: ProdectDetailsBinding()
    ),


    GetPage(
      name: Routes.cart,
      page: () =>   CartScreen(),
      binding: CartBinding()
    ),

    GetPage(
      name: Routes.HomeScreen,
      page: () =>   HomeScreen()
        ,binding:HomeBinding()
    ),
  ];
}