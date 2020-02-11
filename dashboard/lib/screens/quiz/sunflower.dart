import 'package:flutter/material.dart';

class Sunflower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                "https://cf.shopee.ph/file/e70deb2f374f10df1b40c63d1d8588be")
            )
        ),
      height: 70.0,
      width:70.0
    );
  }
}