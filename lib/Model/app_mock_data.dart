import 'package:green_grocer/Model/item_model.dart';

import 'cart_item_model.dart';

ItemModel apple = ItemModel(
  name: 'Maçã',
  imageUrl: 'assets/Images/apple.png',
  unit: 'kg',
  price: 6.5,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
);

ItemModel grape = ItemModel(
  name: 'Uva',
  imageUrl: 'assets/Images/grape.png',
  unit: 'kg',
  price: 2.6,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
);

ItemModel guava = ItemModel(
  name: 'Goiaba',
  imageUrl: 'assets/Images/guava.png',
  unit: 'kg',
  price: 8.9,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
);

ItemModel kiwi = ItemModel(
  name: 'Kiwi',
  imageUrl: 'assets/Images/kiwi.png',
  unit: 'kg',
  price: 13.00,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
);

ItemModel mango = ItemModel(
  name: 'Manga',
  imageUrl: 'assets/Images/mango.png',
  unit: 'un',
  price: 2.5,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
);

ItemModel papaya = ItemModel(
  name: 'Mamão',
  imageUrl: 'assets/Images/papaya.png',
  unit: 'kg',
  price: 6.9,
  description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
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

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 3),
  CartItemModel(item: kiwi, quantity: 1),
  CartItemModel(item: mango, quantity: 1),
];
