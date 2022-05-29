// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<Category> categoryFromJson(String str) => List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  Category({
    required this.id,
    required this.attributes,
  });

  int id;
  CategoryAttributes attributes;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        attributes: CategoryAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class CategoryAttributes {
  CategoryAttributes({
    required this.title,
    required this.image,
  });

  String title;
  Image image;

  factory CategoryAttributes.fromJson(Map<String, dynamic> json) => CategoryAttributes(
        title: json["title"],
        image: Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image.toJson(),
      };
}

class Image {
  Image({
    required this.data,
  });

  Data data;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
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
    required this.url,
  });

  String url;

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
