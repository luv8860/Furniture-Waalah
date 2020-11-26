import 'package:flutter/material.dart';
import 'package:furniture_waalah/services/category_list.dart';
import 'package:furniture_waalah/services/search_box.dart';

class Body extends StatelessWidget {
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
            child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60))),
                    child: ListView(
                      children: [SizedBox(height: 50),
                        Container(height:150,width:200,decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(30))
                        ),),
                        SizedBox(height: 50),
                        Container(height:150,width:200,decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(30))
                        ),),
                        SizedBox(height: 50),
                        Container(height:150,width:200,decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(30))
                        ),),
                        SizedBox(height: 50),
                        Container(height:150,width:200,decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(30))
                        ),),
                        SizedBox(height: 50),
                        Container(height:150,width:200,decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(30))
                        ),),
                      ],
                    ),
          )
        ]))

      ],
    );
  }
}
