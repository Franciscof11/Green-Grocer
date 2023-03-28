import 'package:flutter/material.dart';

class ItemModel {
  String name;
  Widget image;
  String unit; /* Unidade ( Kg, g , ml ) */
  double price;
  String description;

  ItemModel({
    required this.name,
    required this.image,
    required this.unit,
    required this.price,
    required this.description,
  });
}
