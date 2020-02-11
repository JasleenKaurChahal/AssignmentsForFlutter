import 'package:flutter/material.dart';

class Chocolate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                    "https://www.freepngimg.com/thumb/chocolate/22425-4-melted-chocolate-transparent-background.png")
                )
            ),
          height: 70.0,
          width:70.0
        );
  }
}