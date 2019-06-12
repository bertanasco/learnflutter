import 'package:flutter/material.dart';

import 'category.dart';

class CategoryRoute extends StatelessWidget {
  final List _categories = [
    CategoryWidget(
        categoryIcon: Icons.pets, iconColor: Colors.redAccent, text: "Animals"),
    CategoryWidget(
        categoryIcon: Icons.airplanemode_active,
        iconColor: Colors.redAccent,
        text: "Vehicles"),
    CategoryWidget(
        categoryIcon: Icons.star, iconColor: Colors.redAccent, text: "Shapes"),
    CategoryWidget(
        categoryIcon: Icons.add_location,
        iconColor: Colors.redAccent,
        text: "TODO"),
    CategoryWidget(
        categoryIcon: Icons.ac_unit, iconColor: Colors.redAccent, text: "TODO"),
    CategoryWidget(
        categoryIcon: Icons.add_location,
        iconColor: Colors.redAccent,
        text: "Yo mama"),
    CategoryWidget(
        categoryIcon: Icons.add_location,
        iconColor: Colors.redAccent,
        text: "Yo mama")
  ];

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return _buildCategoryWidgets(true);
  }

  Widget _buildCategoryWidgets(bool portrait) {
    if (portrait) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CategoryWidget(
              categoryIcon: Icons.pets,
              iconColor: _baseColors[index],
              text: _categoryNames[index]);
        },
        itemCount: _categories.length,
      );
    } else {
      return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3.0,
        children: _categories,
      );
    }
  }
}
