import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/category.dart' as category;
import '../models/product.dart' as product;

class ApiService {
  static final client = http.Client();
  static final endPoint = "http://10.0.2.2:1337";

  static Future<List<product.Product>?> fetchProducts() async {
    final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

    try {
      var response = await client.get(
        Uri.parse("$endPoint/api/products?populate=%2A"),
        headers: headers,
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final jsonString = jsonEncode(json['data']);
        return product.productFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<List<category.Category>?> fetchCategories() async {
    final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

    try {
      var response = await client.get(
        Uri.parse("$endPoint/api/categories?populate=%2A"),
        headers: headers,
      );
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final jsonString = jsonEncode(json['data']);
        return category.categoryFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
