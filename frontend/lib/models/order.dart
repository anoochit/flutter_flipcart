// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

List<Order> orderFromJson(String str) => List<Order>.from(json.decode(str).map((x) => Order.fromJson(x)));

String orderToJson(List<Order> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Order {
  Order({
    required this.id,
    required this.attributes,
  });

  int id;
  OrderAttributes attributes;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        attributes: OrderAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class OrderAttributes {
  OrderAttributes({
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.user,
    required this.items,
  });

  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  User user;
  List<Item> items;

  factory OrderAttributes.fromJson(Map<String, dynamic> json) => OrderAttributes(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        user: User.fromJson(json["user"]),
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "user": user.toJson(),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    required this.quantity,
    required this.price,
    required this.product,
  });

  int id;
  int quantity;
  int price;
  Product product;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        quantity: json["quantity"],
        price: json["price"],
        product: Product.fromJson(json["product"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "price": price,
        "product": product.toJson(),
      };
}

class Product {
  Product({
    required this.data,
  });

  ProductData data;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        data: ProductData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class ProductData {
  ProductData({
    required this.id,
    required this.attributes,
  });

  int id;
  PurpleAttributes attributes;

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
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

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
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

  List<Datum> data;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
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
  FluffyAttributes attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class FluffyAttributes {
  FluffyAttributes({
    required this.title,
    required this.image,
  });

  String title;
  Image image;

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
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

  Dat data;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        data: Dat.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Dat {
  Dat({
    required this.id,
    required this.attributes,
  });

  int id;
  TentacledAttributes attributes;

  factory Dat.fromJson(Map<String, dynamic> json) => Dat(
        id: json["id"],
        attributes: TentacledAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class TentacledAttributes {
  TentacledAttributes({
    required this.url,
  });

  String url;

  factory TentacledAttributes.fromJson(Map<String, dynamic> json) => TentacledAttributes(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class Images {
  Images({
    required this.data,
  });

  List<Dat> data;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: List<Dat>.from(json["data"].map((x) => Dat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class User {
  User({
    required this.data,
  });

  UserData data;

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: UserData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class UserData {
  UserData({
    required this.id,
    required this.attributes,
  });

  int id;
  StickyAttributes attributes;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        attributes: StickyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class StickyAttributes {
  StickyAttributes({
    required this.username,
    required this.email,
  });

  String username;
  String email;

  factory StickyAttributes.fromJson(Map<String, dynamic> json) => StickyAttributes(
        username: json["username"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
      };
}
