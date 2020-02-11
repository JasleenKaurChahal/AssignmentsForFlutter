import 'package:flutter/material.dart';
import './screens/signup.dart';
import './screens/login.dart';
import './screens/SignupScreen/sign.dart';
import './screens/quiz/quiz_page.dart';

// void main() => runApp(new MyApp());//function expression
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"Ui designs",
    color: Colors.blueAccent,
    //home:Login()
    //home:Sign()
    home:Quiz()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"My first App",
      home: Scaffold(
        appBar: AppBar(title:Text('TRAVEL WORLD',style:TextStyle(color:Colors.white)),backgroundColor: Colors.green),
        body: SignUp()
      ) 
    );
  } 
}