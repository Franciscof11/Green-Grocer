import 'package:flutter/material.dart';
import 'package:green_grocer/Model/item_model.dart';

ItemModel apple = ItemModel(
  name: 'Maçã',
  imageAsset: Image.asset('assets/Images/apple.png'),
  unit: 'kg',
  price: 6.5,
  description: 'A melhor maçã da região',
);

ItemModel grape = ItemModel(
  name: 'Uva',
  imageAsset: Image.asset('assets/Images/grape.png'),
  unit: 'kg',
  price: 2.6,
  description: 'A melhor uva da região',
);

ItemModel guava = ItemModel(
  name: 'Goiaba',
  imageAsset: Image.asset('assets/Images/guava.png'),
  unit: 'kg',
  price: 8.9,
  description: 'A melhor goiaba da região',
);

ItemModel kiwi = ItemModel(
  name: 'Kiwi',
  imageAsset: Image.asset('assets/Images/kiwi.png'),
  unit: 'kg',
  price: 13.00,
  description: 'Kiwi Docinho',
);

ItemModel mango = ItemModel(
  name: 'Manga',
  imageAsset: Image.asset('assets/Images/mango.png'),
  unit: 'kg',
  price: 5.50,
  description: 'A melhor manga da região',
);

ItemModel papaya = ItemModel(
  name: 'Mamão',
  imageAsset: Image.asset('assets/Images/papaya.png'),
  unit: 'kg',
  price: 6.9,
  description: 'Mamão formoso',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Todos',
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais'
];
