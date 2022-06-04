import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:frontend/controllers/product_controller.dart';
import 'package:frontend/models/shopping_cart_items_model.dart';
import 'package:frontend/services/api_service.dart';
import 'package:get/get.dart';

import '../../models/product.dart';
import '../../widgets/cart_iconbutton_widget.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({Key? key}) : super(key: key);

  final product = Get.arguments as Product;
  final appController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // show body under appbar
      extendBodyBehindAppBar: true,
      // show appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        actions: const [
          CartIconButton(),
        ],
      ),
      body: GetBuilder<ProductController>(
          init: ProductController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // show image in page view
                    Stack(
                      children: [
                        SizedBox(
                          width: constraints.maxWidth,
                          height: constraints.maxWidth,
                          child: PageView.builder(
                            onPageChanged: ((value) {
                              controller.currentPageIndex = value;
                              controller.update();
                            }),
                            scrollDirection: Axis.horizontal,
                            itemCount: product.attributes.images.data.length,
                            itemBuilder: (context, index) {
                              return Image.network(
                                ApiService.endPoint + product.attributes.images.data[index].attributes.url,
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 8.0,
                          right: 8.0,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Text('${controller.currentPageIndex + 1}/${product.attributes.images.data.length}'),
                          ),
                        )
                      ],
                    ),

                    // title
                    // TODO : change to text theme
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.attributes.title,
                        maxLines: null,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),

                    // price
                    // TODO : change to text theme
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${product.attributes.price}',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),

                    // description
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(product.attributes.description),
                    ),
                  ],
                );
              }),
            );
          }),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton.icon(
          onPressed: () {
            // add to cart
            log('add to cart');
            appController.addToCart(
              item: ShoppingCartItems(
                productId: product.id,
                quantity: 1,
                price: double.parse('${product.attributes.price}'),
              ),
            );
          },
          icon: const Icon(Icons.add_shopping_cart),
          label: const Text('Add to cart'),
        ),
      ),
    );
  }
}
