import 'package:flutter/material.dart';
import 'package:lesson1_15_category_route/screens/unit_screen.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'category.dart';

class CategoryRoute extends StatelessWidget {

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

  static const _icons = <IconData>[
    Icons.straighten,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
  ];

  @override
  Widget build(BuildContext context) {
    return _buildCategoryWidgets(true);
  }

  Widget _buildCategoryWidgets(bool portrait) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CategoryWidget(
              categoryIcon: _icons[index],
              routeToScreen: Unit(
                categoryName: _categoryNames[index],
                backgroundColor: _baseColors[index],
              ),
              text: _categoryNames[index]);
        },
        itemCount: _icons.length,
      );
  }
}
