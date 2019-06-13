import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class CategoryWidget extends StatelessWidget {
 
  final IconData categoryIcon;
  final Widget routeToScreen;
  final Color iconColor;
  final String text;
  final double _height = 100.0;

  const CategoryWidget(
      {Key key,
      this.categoryIcon,
      this.iconColor,
      this.text,
      this.routeToScreen})
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => this.routeToScreen),
                          );
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
