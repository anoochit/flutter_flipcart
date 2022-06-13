import 'dart:convert';
import 'dart:developer';

import 'package:frontend/models/user.dart';
import 'package:http/http.dart' as http;

import '../models/category.dart' as category;
import '../models/product.dart' as product;

class ApiService {
  static final client = http.Client();
  static const endPoint = "http://10.0.2.2:1337";

  // get products
  static Future<List<product.Product>?> fetchProducts() async {
    final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

    try {
      final response = await client.get(
        Uri.parse("$endPoint/api/products?populate=images,categories"),
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

  // get categories
  static Future<List<category.Category>?> fetchCategories() async {
    final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

    try {
      final response = await client.get(
        Uri.parse("$endPoint/api/categories?populate=image"),
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

  // sign in
  static Future<User?> signIn({required String email, required String password}) async {
    final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

    try {
      final response = await http.post(
        Uri.parse("$endPoint/api/auth/local"),
        headers: headers,
        body: jsonEncode({
          'identifier': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final user = userFromJson(response.body);
        return user;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  // sign up
  static Future<User?> signUp({required String name, required String email, required String password}) async {
    final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

    try {
      final response = await http.post(
        Uri.parse("$endPoint/api/auth/local/register"),
        headers: headers,
        body: jsonEncode({
          'username': name,
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final user = userFromJson(response.body);
        return user;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
