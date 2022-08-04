import 'package:flutter/material.dart';

class LunchModelList {
  String imageurl;
  String name;
  IconData icon;
  String countButoon;
  String pices;

  LunchModelList({
    required this.imageurl,
    required this.name,
    required this.icon,
    required this.countButoon,
    required this.pices,
  });
}

List<LunchModelList> lunchlist = [
  LunchModelList(
      imageurl: 'assets/images/l1.png',
      name: 'Machboos',
      icon: Icons.favorite,
      countButoon: 'Family List',
      pices: 'Rice'),
  LunchModelList(
      imageurl: 'assets/images/l2.png',
      name: 'Vegan Resto',
      icon: Icons.favorite,
      countButoon: 'Moh List',
      pices: 'Veggie'),
  LunchModelList(
      imageurl: 'assets/images/l3.png',
      name: 'Harees',
      icon: Icons.favorite,
      countButoon: 'Moh List',
      pices: 'Meat'),
  LunchModelList(
      imageurl: 'assets/images/l4.png',
      name: 'Msakhan',
      icon: Icons.favorite,
      countButoon: 'Moh List',
      pices: 'Chicken'),
];
