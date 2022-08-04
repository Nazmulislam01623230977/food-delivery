import 'package:flutter/material.dart';

class GrocingModelList {
  String imageurl;
  String name;
  IconData icon;
  String countButoon;
  String pices;

  GrocingModelList({
    required this.imageurl,
    required this.name,
    required this.icon,
    required this.countButoon,
    required this.pices,
  });
}

List<GrocingModelList> groceinglist = [
  GrocingModelList(
      imageurl: 'assets/images/image3.png',
      name: 'Al Marai Milk',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Al Marai Milk'),
  GrocingModelList(
      imageurl: 'assets/images/image2.png',
      name: 'Anchor Cheese',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Cheese'),
  GrocingModelList(
      imageurl: 'assets/images/image4.png',
      name: 'Puck Cheese',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Dairy'),
  GrocingModelList(
      imageurl: 'assets/images/image1.png',
      name: 'Rice Krispy',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Kids'),
];
