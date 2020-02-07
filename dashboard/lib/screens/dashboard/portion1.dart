import 'dart:math';
import 'package:flutter/material.dart';

class Portion1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Portion();
  }
}

class Portion extends State<Portion1> {
  var c=Colors.deepOrange;
  var d=Colors.green;

  _onSelectItem() {
  setState(() {
    c = generateLuckyColor();
    d = generateLuckyColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -20.0;
    double height = MediaQuery. of(context). size. height-20.0;
    return Container(
        padding:EdgeInsets.all(5),
        color: Colors.white,
        width:width/2,
        height:height*(3/4),
        child: Column(children: <Widget>[
          Expanded(
          child:Container(
              alignment: Alignment.center,
              color: d,
              child: Icon(
                  Icons.pages,
                  color: Colors.white,
                  size: 28.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              ),
              SizedBox(height: 10),
              Expanded(
                child:GestureDetector( 
                child:Container(
                  alignment: Alignment.center,
                  // color: Colors.deepOrange,
                  color :c,
                  child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  onTap: ()=>_onSelectItem()
                  )
                )
            ],
          )
        );
  }
  Color generateLuckyColor(){
    var col=[Colors.red,Colors.indigoAccent,Colors.lime,Colors.pinkAccent];
    var r=Random();
    int i=r.nextInt(4);
    return col[i];
  }
}