import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:frontend/models/mock_model.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          log('total items: ${controller.shopingCartItems.length}');
          return Scaffold(
            appBar: AppBar(
              title: const Text("Shopping Cart"),
            ),
            body: ListView.builder(
              itemCount: controller.shopingCartItems.length,
              itemBuilder: (BuildContext context, int index) {
                // get product info
                final cartItem = controller.shopingCartItems[index];
                final product = listProduct.where((element) => element.id == cartItem.productId).first;

                // show product item in cart
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // show image
                        Image.network(
                          product.imageUrls.first,
                          width: 120,
                          height: 120,
                        ),
                        // poduct info
                        SizedBox(
                          height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // title
                              Text(
                                '${product.title}',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              // price
                              Text('${cartItem.price}'),
                              // quantity
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        // update quantity in cart
                                        controller.updateQuantity(item: cartItem, quantity: (cartItem.quantity - 1));
                                      },
                                      icon: const Icon(Icons.remove)),
                                  Text('${cartItem.quantity}'),
                                  IconButton(
                                      onPressed: () {
                                        // update quantity in cart
                                        controller.updateQuantity(item: cartItem, quantity: cartItem.quantity + 1);
                                      },
                                      icon: const Icon(Icons.add)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      height: 1.0,
                    ),
                  ],
                );
              },
            ),
            bottomNavigationBar: (controller.shopingCartItems.isNotEmpty)
                ? Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // total
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Total price'),
                              Text(
                                  '${controller.shopingCartItems.map((element) => element.price * element.quantity).reduce((value, element) => value + element)}'),
                            ],
                          ),
                        ),
                        // checkout button
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Proceed to Checkout"),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          );
        });
  }
}
