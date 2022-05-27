import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // show body under appbar
      extendBodyBehindAppBar: true,
      // show appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // show image in page view
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                child: PageView.builder(
                  onPageChanged: ((value) {
                    log('$value');
                  }),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Placeholder();
                  },
                ),
              ),

              // title
              const SizedBox(height: 16.0),
              Text(
                "Product Title",
                style: Theme.of(context).textTheme.headline5,
              ),

              // price
              const SizedBox(height: 8.0),
              Text(
                "00.00",
                style: Theme.of(context).textTheme.headline6,
              ),

              // description
              const SizedBox(height: 8.0),
              Text(
                "Nostrud id aute consequat veniam proident adipisicing quis fugiat voluptate esse mollit ex deserunt. Consectetur dolor velit duis enim id sint fugiat eu duis aute. Fugiat et aliquip culpa labore quis excepteur adipisicing. Nulla anim consequat sint consectetur duis occaecat proident ipsum enim labore eu ex sint nisi. Officia est quis eiusmod elit Lorem magna laboris est exercitation consectetur mollit dolor tempor. Ullamco Lorem non sunt reprehenderit laborum enim cillum sunt pariatur. Ipsum incididunt eu ex magna veniam Lorem culpa enim voluptate occaecat duis voluptate exercitation est."
                    .replaceAll(". ", "\n"),
              ),
            ],
          );
        }),
      ),
    );
  }
}
