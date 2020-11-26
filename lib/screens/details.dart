import 'package:flutter/material.dart';

class Details extends StatefulWidget {
   final String imglink;
   Details({Key key, @required this.imglink}) : super(key: key);
  @override
  _DetailsState createState() => _DetailsState(imglink);
}

class _DetailsState extends State<Details> {
  final String imglink;
   _DetailsState(this.imglink);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child: Hero(transitionOnUserGestures:true,tag: 'abc$imglink', child: Image.asset(imglink))
      ),
    );
  }
}