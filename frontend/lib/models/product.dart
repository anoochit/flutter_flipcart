// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.attributes,
  });

  int id;
  ProductAttributes attributes;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        attributes: ProductAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class ProductAttributes {
  ProductAttributes({
    required this.title,
    required this.description,
    required this.price,
    required this.images,
    required this.categories,
  });

  String title;
  String description;
  int price;
  Images images;
  Categories categories;

  factory ProductAttributes.fromJson(Map<String, dynamic> json) => ProductAttributes(
        title: json["title"],
        description: json["description"],
        price: json["price"],
        images: Images.fromJson(json["images"]),
        categories: Categories.fromJson(json["categories"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "price": price,
        "images": images.toJson(),
        "categories": categories.toJson(),
      };
}

class Categories {
  Categories({
    required this.data,
  });

  List<CategoriesDatum> data;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        data: List<CategoriesDatum>.from(json["data"].map((x) => CategoriesDatum.fromJson(x))),
      );

  get first => null;

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class CategoriesDatum {
  CategoriesDatum({
    required this.id,
    required this.attributes,
  });

  int id;
  PurpleAttributes attributes;

  factory CategoriesDatum.fromJson(Map<String, dynamic> json) => CategoriesDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class PurpleAttributes {
  PurpleAttributes({
    required this.title,
  });

  String title;

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
      };
}

class Images {
  Images({
    required this.data,
  });

  List<ImagesDatum> data;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: List<ImagesDatum>.from(json["data"].map((x) => ImagesDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ImagesDatum {
  ImagesDatum({
    required this.attributes,
  });

  FluffyAttributes attributes;

  factory ImagesDatum.fromJson(Map<String, dynamic> json) => ImagesDatum(
        attributes: FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "attributes": attributes.toJson(),
      };
}

class FluffyAttributes {
  FluffyAttributes({
    required this.url,
  });

  String url;

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
