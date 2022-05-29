import 'package:frontend/controllers/app_controller.dart';
import 'package:frontend/controllers/category_controller.dart';
import 'package:frontend/controllers/product_controller.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(CategoryController());
    Get.put(ProductController());
  }
}
