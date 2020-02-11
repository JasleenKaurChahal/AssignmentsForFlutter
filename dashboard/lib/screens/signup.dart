import 'package:dashboard/screens/dashboard/row_col.dart';
import 'package:flutter/material.dart';
import './carousal.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -10.0;
    double height = MediaQuery. of(context). size. height-10.0;
    return Material(
    color:Colors.white,
    child: Center(child: 
    Column(children: <Widget>[
          SizedBox(height: height*(0.3/5)),
          Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                    "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                )
            ),
          height:height*(1/5),
          width:width*(1.5/3),
          //child:Image.asset('assets/images/tajMehal.png') 
          //child:Image.network('https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')   
        ),
        SizedBox(height: height*(0.3/5)),
        Carousal(),
        SignUpButton()
        //   Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       color: Colors.lightGreenAccent,
        //       width: 4,
        //       ),
        //     borderRadius: BorderRadius.circular(12),
        //     ),
        //   height:height*(1.5/5),
        //   width:width-50     
        // )
    ],)
      )
    ); 
  }
}

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      alignment: Alignment.center,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            RaisedButton(
            color:Colors.deepOrange,
            child:Text('Dashboard',style:TextStyle(color:Colors.white)),
            elevation:6.0,
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Assignment()),
              );
            }     
          ),
            SizedBox(width: 50.0),
            RaisedButton(
              color:Colors.deepOrange,
              child:Text('Sign Up',style:TextStyle(color:Colors.white)),
              elevation:6.0,
              onPressed:(){
                signInFunc(context);
              }
            )
          ],
        )
    );
  }
  void signInFunc(BuildContext context){
      var alertBox=AlertDialog(
        title:Text('Signed In successfully'),
        content:Text('Enjoy your trip')
      );

      showDialog(
        context: context,
        // builder:(BuildContext context){
        //   return alertBox;
        // }
        builder: (BuildContext context)=>alertBox
      );
    }
}


