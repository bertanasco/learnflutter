import 'package:flutter/material.dart';

final Color _backgroundColor = Colors.blueGrey;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: _backgroundColor,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage('images/diamond.png'),
            ),
          ),
        ),
      ),
    ),
  );
}
