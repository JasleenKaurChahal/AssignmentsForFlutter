import 'package:flutter/material.dart';

class Leaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                'https://previews.123rf.com/images/igorkovalchuk/igorkovalchuk1212/igorkovalchuk121200075/16831852-single-leaf-isolated-on-white-background.jpg')
            )
        ),
      height: 70.0,
      width:70.0
    );
  }
}