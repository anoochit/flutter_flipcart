import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:frontend/models/mock_model.dart';
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
              SizedBox(height: 8),
              Container(
                width: constraints.maxWidth,
                height: (120),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listCategory
                      .map((e) => Container(
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
                                    e.imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // title
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(e.title),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),

              // show banner

              // shuffle product

              // show shuffle lastest 10 products here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Wrap(
                  children: List.generate(
                    10,
                    (value) {
                      // random product index
                      int index = math.Random().nextInt(listProduct.length);

                      // show product widget here
                      return SizedBox(
                        width: constraints.maxWidth * 0.5 - 4,
                        child: ProductItem(
                          productId: listProduct[index].id,
                          title: listProduct[index].title,
                          description: listProduct[index].description,
                          categoryId: listProduct[index].categoryId,
                          imageUrl: listProduct[index].imageUrls,
                          price: listProduct[index].price,
                          onTap: () {
                            // open product detail page
                            log('open product id = ${listProduct[index].id}');

                            Get.toNamed('/product_detail', arguments: listProduct[index]);
                          },
                        ),
                      );
                    },
                  ).toList(),
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
