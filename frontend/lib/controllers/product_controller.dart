import 'dart:developer';

import 'package:get/get.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductController extends GetxController {
  RxList<Product> listProduct = RxList<Product>();

  @override
  onInit() {
    super.onInit();
    fetchProducts();
  }

  fetchProducts() async {
    listProduct.value = (await ApiService.fetchProducts()) ?? [];
    log('total products = ${listProduct.length}');
    update();
  }
}
