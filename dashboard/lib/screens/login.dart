import 'package:flutter/material.dart';
import './placesList.dart';

class Login extends StatefulWidget{
  Login({Key key, this.title}) : super(key: key);
      final String title;
      @override
      LoginPage createState() => LoginPage();
}

class LoginPage extends State<Login> {
  TextStyle style = TextStyle(fontFamily: 'Roberto', fontSize: 20.0);
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
      @override
      Widget build(BuildContext context) {

        final emailField = TextField(
          controller: email,
          obscureText: false,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final passwordField = TextField(
          controller: pass,
          obscureText: true,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed:(){
              if(pass.text.length != 0 && email.text.length!=0 && email.text.contains('@')){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlacesList()),
              ); 
              }      
            },   
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );

        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                              )
                          ),
                        height: 170.0,
                        width:200.0
                      ),
                      SizedBox(height:30.0),
                        Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 2.0,
                            ),
                          borderRadius: BorderRadius.circular(12),
                          ),
                        height:270.0,
                        width:400.0,  
                        padding: EdgeInsets.only(right:20.0,left:20.0),
                        child: Column(children: <Widget>[
                          SizedBox(height: 20.0),
                          emailField,
                          SizedBox(height: 25.0),
                          passwordField,
                          SizedBox(
                            height: 35.0,
                          ),
                          loginButon,
                        ],)  
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }
