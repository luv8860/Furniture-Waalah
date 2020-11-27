import 'package:flutter/material.dart';
import 'package:furniture_waalah/services/bed.dart';
import 'package:furniture_waalah/services/category_list.dart';
import 'package:furniture_waalah/services/search_box.dart';
import 'package:furniture_waalah/services/sofa.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Widget> pages =[Bed(),Sofa()];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        SearchBox(),
        SizedBox(height: 10),
        Categorylist(),
        SizedBox(height: 10),
        Expanded(
                  child: PageView(
    children: pages,
  ),
        )
      ],
    );
  }
}