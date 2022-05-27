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
}
