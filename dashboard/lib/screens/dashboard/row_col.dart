import 'package:flutter/material.dart';
import './portion1.dart';
import './portion2.dart';
import './portion3.dart';

class Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -10.0;
    double height = MediaQuery. of(context). size. height-10.0;
    return Container(
      color:Colors.white,
      padding:EdgeInsets.all(5.0),
      child:Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
              Container(
                color: Colors.white,
                width:width,
                height:(3/4)*height,
                child: Row(
                  children: <Widget>[
                    Portion1(),
                    SizedBox(width: 10),
                    Portion2()
                  ],
                  )
                ),
                Portion3(),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  width:width-10,
                  height:((1/4)*height)/2-20,
                  child: Icon(
                    Icons.radio,
                    color: Colors.white,
                    size: 28.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
            ]
          )
        )
    );
  }
}