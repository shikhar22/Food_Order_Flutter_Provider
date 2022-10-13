import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Cheese Sandwich',
    'Non veg Momos',
    'Cheese Chilly',
    'Burger',
    'Garlic Noodles',
    'Dosa',
    'Fried Rice',
    'Peri Peri Fries',
    'Paneer Tikka Masala',
    'Red Sauce Pasta',
    'White Sauce Pasta',
    'Noodles',
    'Chicken 65',
    'Spaghetti',
    'Veg. Manchurian',
    'Uttapam',
  ];
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);
  Item getByPosition(int position) {
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  Color color = Color.fromARGB(255, 138, 96, 110);
  final int price = 75;

  Item(this.id, this.name): color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
