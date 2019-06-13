import 'package:flutter/material.dart';

class Unit extends StatelessWidget {
  final String categoryName;
  final Color backgroundColor;

  const Unit({Key key, this.categoryName, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: this.backgroundColor,
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: this.backgroundColor,
          title: Text(
            this.categoryName,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          elevation: 1.0),
    );
  }
}
