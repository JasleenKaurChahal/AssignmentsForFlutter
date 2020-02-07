import 'package:flutter/material.dart';
import './portion4.dart';

class Portion2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -20.0;
    double height = MediaQuery. of(context). size. height-20.0;
    return Container( 
      margin:EdgeInsets.only(top: 10),
      child: Column(children: <Widget>[
      GestureDetector(
        onTap: () {
        final snackBar = SnackBar(content: Text("Tap"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
      child:Container(
      color: Colors.blue,
      height:(height*(3/4))*(1/7)-20,
      width:width/2-5,
      child: Icon(
                  Icons.wifi,
                  color: Colors.white,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
      )),
    SizedBox(height: 15),
    Container(
      color: Colors.white,
      width:width/2-5,
      height:(height*(3/4))*(6/7)-5,
      child: Portion4()
      )
      ],)
    );
  }
}