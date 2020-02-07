import 'package:flutter/material.dart';
import './profile.dart';
import './carousal.dart';
import './login.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget horizontalList1 = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 60.0,
      child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(width: 160.0, color: Colors.green,
        child:Center(child:Text('Singapore',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,  
                )))),
        Container(width: 160.0, color: Colors.lightGreen,
          child:Center(child:Text('Paris',
                textAlign:TextAlign.center,
                style:TextStyle(
                  color:Colors.white,
                  fontSize: 20.0, 
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,  
                  )))),
        Container(width: 160.0, color: Colors.green,
        child:Center(child:Text('Usa',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,  
                )))),
        Container(width: 160.0, color:Colors.lightGreen,
        child:Center(child:Text('Canda',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,  
                )))),
      ],
    )
    );
    Widget horizontalList2 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(width: 160.0, color: Colors.lightGreen,
        child:Center(child:Text('Travel Singapore to discover the beauty with beatiful beaches.',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Roberto',
                fontStyle: FontStyle.italic,  
                )))),
        Container(width: 160.0, color: Colors.green,
        child:Center(child:Text('Travel paris to discover the beauty and enjoy.',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Roberto',
                fontStyle: FontStyle.italic,  
                )))),
        Container(width: 160.0, color: Colors.lightGreen,
        child:Center(child:Text('Travel USA to discover the beauty and enjoy.',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Roberto',
                fontStyle: FontStyle.italic,  
                )))),
        Container(width: 160.0, color: Colors.green,
        child:Center(child:Text('Travel Canda to discover the beauty and enjoy.',
              textAlign:TextAlign.center,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20.0, 
                fontFamily: 'Roberto',
                fontStyle: FontStyle.italic,  
                )))),
      ],
    )
    );
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Carousal(),
              Profile(),
              horizontalList1,
              horizontalList2,   
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}