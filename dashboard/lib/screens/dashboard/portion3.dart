import 'package:flutter/material.dart';

class Portion3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width-20;
    double height = MediaQuery. of(context). size. height-20;
    return ( Container(
      padding: EdgeInsets.all(5),
      child:Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.pink,
            //width:width-20,
            width:(width)*(3/4)-5,
            height:((1/4)*height)/2 -10,
            child: Icon(
                  Icons.battery_alert,
                  color: Colors.white,
                  size: 32.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
          SizedBox(width: 10),
          Container(
            alignment: Alignment.center,
            color: Colors.purple,
            width:(width)*(1/4)-5,
            height:((1/4)*height)/2 -10,
            child: Icon(
                  Icons.tv,
                  color: Colors.white,
                  size: 26.0,
                  semanticLabel: 'Text to announce in accessibility modes',
            ),
          )
        ],
      )
    ));
  }
}