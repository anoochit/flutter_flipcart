// sample code for using Get Connect to connect to REST API

import 'dart:convert';

import 'package:get/get.dart';

import '../models/product.dart';

// use API Provider as a service provider
// you should sepatate provider as your model, resource or page
class ApiProvider extends GetConnect {
  // enpoint
  static const endPoint = "http://10.0.2.2:1337";

  // get products
  Future<Response> getProducts() => get('${endPoint}/api/products?populate=images,categories');
}

// sample api service
class ApiService {
  // get products
  static Future<List<Product>> fetchProducts() async {
    final result = await ApiProvider().getProducts(); // get product from rest api
    final json = jsonDecode('${result.bodyString}'); // decode
    final jsonString = jsonEncode(json['data']); // grab only data
    final product = productFromJson(jsonString); // parse to model
    return product;
  }
}
