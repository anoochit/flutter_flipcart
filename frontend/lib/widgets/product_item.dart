import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.productId,
    required this.title,
    required this.description,
    required this.categoryId,
    required this.imageUrl,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  final int productId;
  final String title;
  final String description;
  final int categoryId;
  final String imageUrl;
  final int price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        // ontab
        onTap: () => onTap(),
        // show product card
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // image
              Image.network(
                imageUrl,
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                fit: BoxFit.fill,
              ),

              // title
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 8.0,
                ),
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // price this should show as currency format
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Text(
                  '$price',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),

              SizedBox(height: 8.0),
            ],
          ),
        ),
      );
    });
  }
}
