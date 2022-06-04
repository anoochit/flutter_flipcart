// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

//import 'package:meta/meta.dart';
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.jwt,
    required this.user,
  });

  String jwt;
  UserClass user;

  factory User.fromJson(Map<String, dynamic> json) => User(
        jwt: json["jwt"],
        user: UserClass.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "jwt": jwt,
        "user": user.toJson(),
      };
}

class UserClass {
  UserClass({
    required this.id,
    required this.username,
    required this.email,
    required this.provider,
    required this.confirmed,
    required this.blocked,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String username;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "provider": provider,
        "confirmed": confirmed,
        "blocked": blocked,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
