import 'package:flutter/material.dart';

class Checkmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: new NetworkImage(
                "https://tdan.com/wp-content/uploads/2015/06/Tick-Box-Data-Governance1.jpg")
            )
        ),
      height: 70.0,
      width:70.0
    );
  }
}