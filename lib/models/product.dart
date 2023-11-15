// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    String name;
    String amount;
    String description;

    Product({
        required this.name,
        required this.amount,
        required this.description,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "amount": amount,
        "description": description,
    };
}
