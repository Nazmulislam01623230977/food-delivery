import 'package:flutter/material.dart';

class GroceryModelList {
  String imageurl;
  String name;
  IconData icon;
  String countButoon;
  String pices;

  GroceryModelList({
    required this.imageurl,
    required this.name,
    required this.icon,
    required this.countButoon,
    required this.pices,
  });
}

List<GroceryModelList> gromeallist = [
  GroceryModelList(
      imageurl: 'assets/images/image3.png',
      name: 'Milk 500 ml',
      icon: Icons.favorite,
      countButoon: '0 + 3',
      pices: 'Piece'),
  GroceryModelList(
      imageurl: 'assets/images/image2.png',
      name: 'Anchor Cheese',
      icon: Icons.favorite,
      countButoon: '0 + 4',
      pices: 'Piece'),
  GroceryModelList(
      imageurl: 'assets/images/image4.png',
      name: 'Puck Cheese ',
      icon: Icons.favorite,
      countButoon: '0 + 3',
      pices: 'Piece'),
  GroceryModelList(
      imageurl: 'assets/images/meal1.png',
      name: 'meal1.png',
      icon: Icons.favorite,
      countButoon: '0 + 3',
      pices: 'Piece'),
];
