import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.redAccent,
      child:Center(
      child:Container(
      alignment:Alignment.center,
      color:Colors.red,
      width:200.0,
      height:100.0,
      child:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child:Text(
                    'Hi',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      decoration:TextDecoration.none,
                      color:Colors.white,
                      fontSize: 10.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,  
                    )
                  )),
            Expanded(
              child:Text(
                  'My name is jasleen Kaur chahal',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    decoration:TextDecoration.none,
                    color:Colors.white,
                    fontSize: 10.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic
                  )
                ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child:Text(
                    'Hi',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      decoration:TextDecoration.none,
                      color:Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,  
                    )
                  )),
            Expanded(
              child:Text(
                  'hi',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    decoration:TextDecoration.none,
                    color:Colors.white,
                    fontSize: 40.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic
                  )
                ))
            ],
          )
        ],
        )
    )));
  }
}