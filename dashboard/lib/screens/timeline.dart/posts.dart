import 'package:flutter/material.dart';
import '../SignupScreen/sign.dart';

class TimelinePosts extends StatefulWidget {
  @override
  _TimelinePostsState createState() => _TimelinePostsState();
}

class _TimelinePostsState extends State<TimelinePosts> {
  bool loading=false;

  void _onLoading() {
    setState(() {
      loading = true;
      new Future.delayed(new Duration(seconds: 3), _login);
    });
  }

  Future _login() async{
        setState((){
          loading = false;
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Donation',
      home:Container(
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(1),
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/e5/e3/89/e5e3893defd9c52272e621589f3d4c22.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child:loading?CircularProgressIndicator():Sign(),
    )); 
  }
}