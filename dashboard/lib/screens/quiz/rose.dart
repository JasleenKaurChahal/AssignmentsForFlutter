import 'package:flutter/material.dart';

class Rose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                "https://5.imimg.com/data5/AA/KK/MY-6677193/red-rose-500x500.jpg")
            )
        ),
      height: 70.0,
      width:70.0
    );
  }
}