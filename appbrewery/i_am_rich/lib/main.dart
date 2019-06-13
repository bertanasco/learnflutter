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
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045_1280.jpg"),
            ),
          ),
        ),
      ),
    ),
  );
}
