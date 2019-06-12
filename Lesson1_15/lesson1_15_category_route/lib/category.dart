import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final IconData categoryIcon;
  final Color iconColor;
  final String text;
  final double _height = 100.0;

  const CategoryWidget({Key key, this.categoryIcon, this.iconColor, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
            height: _height,
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: InkWell(
                        onTap: () {
                          print("Yo inkwell");
                        },
                        child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  this.categoryIcon,
                                  size: 60,
                                  color: this.iconColor,
                                )),
                            Center(
                                child: Text(
                              this.text,
                              style: TextStyle(fontSize: 24),
                            ))
                          ],
                        ))))));
  }
}
