import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      { this.id = "",
      this.title = "",
      this.description="",
    this.price=0,
    this.imageUrl="",
      this.isFavorite = false});
}
