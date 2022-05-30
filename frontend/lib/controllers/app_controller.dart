import 'package:get/get.dart';

import '../models/shopping_cart_items_model.dart';

class AppController extends GetxController {
  RxBool isLogin = false.obs;
  RxInt navigationIndex = 0.obs;
  RxList<ShoppingCartItems> shopingCartItems = <ShoppingCartItems>[].obs;

  RxString userName = "".obs;

  // set bottom navigation index
  setNavigationIndex({required int index}) {
    navigationIndex.value = index;
    update();
  }

  // Mackup : process
  mockSignUp() {
    // Mockup : process
    isLogin.value = true;
    userName.value = "User Name";
    update();
    Get.offAllNamed('/');
  }

  mockSignIn() {
    // Mockup : process
    isLogin.value = true;
    userName.value = "User Name";
    update();
    Get.offAllNamed('/');
  }

  mockSignOut() {
    // Mockup : process
    isLogin.value = false;
    userName.value = "";
    update();
    Get.offAllNamed('/');
  }

  // add to cart
  addToCart({required ShoppingCartItems item}) {
    // check if item already in cart
    if (shopingCartItems.where((e) => e.productId == item.productId).isNotEmpty) {
      // if already in cart, increase quantity
      shopingCartItems.firstWhere((element) => element.productId == item.productId).quantity++;
    } else {
      // if not in cart, add to cart
      shopingCartItems.add(item);
    }
    update();
  }

  // update quantity
  updateQuantity({required ShoppingCartItems item, required int quantity}) {
    // update quantity
    if (quantity == 0) {
      shopingCartItems.removeWhere((element) => element.productId == item.productId);
    } else {
      shopingCartItems.firstWhere((element) => element.productId == item.productId).quantity = quantity;
    }
    update();
  }
}
