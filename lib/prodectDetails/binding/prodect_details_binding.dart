


import 'package:get/get.dart';

import '../../cart/controller/cart_controller.dart';
import '../controller/prodect_details_controller.dart';

class ProdectDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProdectDetailsController>(ProdectDetailsController());
    Get.put<CartController>(CartController());
  }
}
