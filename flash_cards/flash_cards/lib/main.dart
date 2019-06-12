import 'package:flutter/material.dart';

import 'category.dart';
import 'category_route.dart';

final List<Widget> _categories = [
  CategoryWidget(
      categoryIcon: Icons.cake, iconColor: Colors.redAccent, text: "Reload"),
  CategoryWidget(
      categoryIcon: Icons.access_time,
      iconColor: Colors.redAccent,
      text: "Custom Widget"),
  CategoryWidget(
      categoryIcon: Icons.add_location,
      iconColor: Colors.redAccent,
      text: "Yo mama")
];

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, title: "Converter", home: HomeApp()));

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  CategoryRoute()
    );
  }
}
