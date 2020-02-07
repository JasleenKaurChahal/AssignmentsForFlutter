import 'package:dashboard/screens/placesList.dart';
import 'package:flutter/material.dart';
 //import './screens/home.dart';
import './screens/dashboard/row_col.dart';
import './screens/signup.dart';
import './screens/placesList.dart';
import './screens/login.dart';

// void main() => runApp(new MyApp());//function expression
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"Ui designs",
    color: Colors.blueAccent,
    //home:Assignment()
    //home:PlacesList()
    home:Login()
    )
  );
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