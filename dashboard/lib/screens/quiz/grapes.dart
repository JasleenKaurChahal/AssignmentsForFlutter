import 'package:flutter/material.dart';

class Grapes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                "https://img.etimg.com/thumb/width-640,height-480,imgsize-89908,resizemode-1,msid-69367341/indias-grape-exports-to-europe-surge-by-31.jpg")
            )
        ),
      height: 70.0,
      width:70.0
    );
  }
}