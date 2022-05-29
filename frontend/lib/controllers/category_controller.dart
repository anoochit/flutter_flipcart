import 'dart:developer';

import 'package:get/get.dart';
import '../models/category.dart';
import '../services/api_service.dart';

class CategoryController extends GetxController {
  RxList<Category> listCategory = RxList<Category>();

  @override
  onInit() {
    super.onInit();
    fetchCategories();
  }

  fetchCategories() async {
    listCategory.value = (await ApiService.fetchCategories()) ?? [];
    log('total category = ${listCategory.length}');
  }
}
