import 'package:flutter/material.dart';

class Portion5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -20.0;
    double height = MediaQuery. of(context). size. height-20.0;
    return Container(
        color: Colors.white,
        child: Column(children: <Widget>[
        Container(
              alignment: Alignment.center,
              color: Colors.yellow[700],
              height: (((3/4)*height)-10)*3/4-50,
              width:(width/2)/2-5,
              child: Icon(
                  Icons.panorama_wide_angle,
                  color: Colors.white,
                  size: 30.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  color: Colors.deepOrangeAccent,
                  height: (((3/4)*height)-20)*1/4-50,
                  width:(width/2)/2-5,
                  child: Icon(
                      Icons.bluetooth,
                      color: Colors.white,
                      size: 28.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  )
            ],
          )
        );
  }
}