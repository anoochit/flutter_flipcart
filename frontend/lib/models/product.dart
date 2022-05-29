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
    required this.category,
  });

  String title;
  String description;
  int price;
  Images images;
  Category category;

  factory ProductAttributes.fromJson(Map<String, dynamic> json) => ProductAttributes(
        title: json["title"],
        description: json["description"],
        price: json["price"],
        images: Images.fromJson(json["images"]),
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "price": price,
        "images": images.toJson(),
        "category": category.toJson(),
      };
}

class Category {
  Category({
    required this.data,
  });

  Data data;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.attributes,
  });

  int id;
  DataAttributes attributes;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: DataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DataAttributes {
  DataAttributes({
    required this.title,
  });

  String title;

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
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

  List<Datum> data;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.attributes,
  });

  int id;
  DatumAttributes attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DatumAttributes {
  DatumAttributes({
    required this.url,
  });

  String url;

  factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
