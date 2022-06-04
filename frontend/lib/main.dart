import 'package:flutter/material.dart';
import 'package:frontend/pages/cart/cart.dart';
import 'package:frontend/pages/product/product_detail.dart';
import 'package:frontend/themes/dark.dart';
import 'package:frontend/themes/light.dart';
import 'package:get/get.dart';
import 'bindings/root_binding.dart';
import 'pages/home/home.dart';
import 'pages/signin/signin.dart';
import 'pages/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flip Cart',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      initialBinding: RootBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          binding: RootBinding(),
        ),
        GetPage(
          name: '/cart',
          page: () => CartPage(),
        ),
        GetPage(
          name: '/signup',
          page: () => SignUpPage(),
        ),
        GetPage(
          name: '/signin',
          page: () => SignInPage(),
        ),
        GetPage(
          name: '/product_detail',
          page: () => ProductDetailPage(),
        ),
      ],
    );
  }
}
