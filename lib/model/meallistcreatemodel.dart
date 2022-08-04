import 'package:flutter/material.dart';

class MealCreateModelList {
  String imageurl;
  String name;
  IconData icon;
  String countButoon;
  String pices;

  MealCreateModelList({
    required this.imageurl,
    required this.name,
    required this.icon,
    required this.countButoon,
    required this.pices,
  });
}

List<MealCreateModelList> mealcreatelist = [
  MealCreateModelList(
      imageurl: 'assets/images/l3.png',
      name: 'Machboos',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Rice'),
 MealCreateModelList(
      imageurl: 'assets/images/l2.png',
      name: 'Vegan Resto',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Veggie '),
  MealCreateModelList(
      imageurl: 'assets/images/l2.png',
      name: 'Vegan Resto',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Veggie '),
  MealCreateModelList(
      imageurl: 'assets/images/l1.png',
      name: 'Msakhan',
      icon: Icons.favorite,
      countButoon: 'add to list',
      pices: 'Chicken'),
];
