import 'package:flutter/material.dart';

import 'category_route.dart';

void main() => runApp(MaterialApp(
    color: Colors.green[100],
    debugShowCheckedModeBanner: false,
    title: "Converter",
    home: HomeApp()));

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
            backgroundColor: Colors.green[100],
            title: Text(
              "Unit Converter",
              style: TextStyle(fontSize: 30,color: Colors.black),
            ),
            elevation: 0.0),
        body: CategoryRoute());
  }
}
