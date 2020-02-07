import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 200.0,
    width: 350.0,
    child: Carousel(
      images: [
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSfZFEuNkjZXxuOMTmtXnMTwSeoh-RA4tdXabn_tuXW0Nexj_6r'),
        NetworkImage('https://www.tripsavvy.com/thmb/iY6l9l7EyzSPcLwHmnrh670gFYE=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-654013042-28f42fc82c544a9fb0f74458b85de713.jpg'),
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTesZ7tSVDawIMWAlEpeBbKz4sUV30057kscTWAPZpD0FOcoLXA'),
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFfiJdtKVZndleXg3f7tvbaBp11N4YyDOaky_UCgX7M_BE6lse'),
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHWuS99_BKCJSXvke_XqHyXutGCqEr6tlyeuO6DRR-rnsfYFLU')
      ],
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.lightGreenAccent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.white.withOpacity(0.5),
      borderRadius: true,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
    )
    );
  }
}
