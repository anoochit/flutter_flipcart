import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend/controllers/category_controller.dart';
import 'package:frontend/controllers/product_controller.dart';
import 'package:frontend/services/api_service.dart';
import 'package:frontend/widgets/product_item.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // show category
    // show news product shuffle
    // show category product
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // category
              const SizedBox(height: 8),
              SizedBox(
                width: constraints.maxWidth,
                height: (128),
                child: GetBuilder<CategoryController>(builder: (CategoryController controller) {
                  final listCategory = controller.listCategory;
                  return ListView.builder(
                    itemCount: listCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      // list category item
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        width: constraints.maxWidth * 0.25,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // image
                            ClipOval(
                              child: Image.network(
                                ApiService.endPoint + listCategory[index].attributes.image.data.attributes.url,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // title
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Text(
                                listCategory[index].attributes.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),

              // show banner

              // shuffle product

              // show shuffle lastest 10 products here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GetBuilder<ProductController>(
                  builder: (controller) {
                    final listProduct = controller.listProduct;
                    return Wrap(
                      children: listProduct.map((product) {
                        return SizedBox(
                          width: constraints.maxWidth * 0.5 - 4,
                          child: ProductItem(
                            productId: product.id,
                            title: product.attributes.title,
                            description: product.attributes.description,
                            categoryId: product.attributes.categories.data.first.id,
                            imageUrl: ApiService.endPoint + product.attributes.images.data.first.attributes.url,
                            price: product.attributes.price,
                            onTap: () {
                              // open product detail page
                              log('open product id = ${product.id}');

                              Get.toNamed('/product_detail', arguments: product);
                            },
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              )

              // category products
            ],
          );
        },
      ),
    );
  }
}
