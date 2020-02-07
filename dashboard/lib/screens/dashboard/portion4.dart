import 'package:flutter/material.dart';
import './portion5.dart';
import './portion6.dart';

class Portion4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -20.0;
    double height = MediaQuery. of(context). size. height-20.0;
    return Container(
      child:Row(children: <Widget>[
        Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  width:(width/2)/2-5,
                  height:((3/4)*height)-20,
                  child: Portion5()
                ),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  width:(width/2)/2-10,
                  height:((3/4)*height)-20,
                  child: Portion6()
                ),
      ],)
    );
  }
}