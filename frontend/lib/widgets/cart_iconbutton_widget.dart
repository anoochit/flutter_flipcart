import 'package:flutter/material.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:get/get.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          return IconButton(
            icon: Stack(children: [
              const Icon(
                Icons.shopping_cart,
                size: 28,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                    ),
                    child: Text(
                      ' ${controller.shopingCartItems.length} ',
                      style: const TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            onPressed: () => Get.toNamed('/cart'),
          );
        });
  }
}
