// sample code for using Get Connect to connect to REST API

import 'package:get/get.dart';

// use API Provider as a service provider
// you should sepatate provider as your model, resource or page
class ApiProvider extends GetConnect {
  // enpoint
  static const endPoint = "http://10.0.2.2:1337";

  // get products
  Future<Response> getProducts() => get('${endPoint}/api/products?populate=images,categories');

  /*
   ApiProvider().getProducts().then((response) {
      final json = jsonDecode('${response.bodyString}');
      final jsonString = jsonEncode(json['data']);
      final product = productFromJson(jsonString);
      log('${product.length}');
    });

  */
}
