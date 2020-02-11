import 'package:flutter/material.dart';
import './puzzles.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(title: Text('COLOUR MATCHING!!'),backgroundColor: Colors.deepPurple),
        body: Container(
          margin: EdgeInsets.only(left: 30,right:30.0),
          child:Puzzles()
        ),
      )
    );
  }
}