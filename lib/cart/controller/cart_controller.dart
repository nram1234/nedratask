import 'package:get/get.dart';

import '../../models/cart_item_model.dart';

class CartController extends GetxController{
List<Itemcard>cart=[];



additemcard({required Itemcard itemcard}){
  cart.add(itemcard);
  update();
}

delitemcard({required Itemcard itemcard}){
  cart.remove(itemcard);
  update();
}
chitemcard({required int pos,required bool val}){
  cart[pos].ch=val;
  update();
}
}
