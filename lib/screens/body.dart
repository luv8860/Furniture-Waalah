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
              children: [
                SizedBox(height: 50),
                ProductCard(imglink:'assets/bed.png',name:'Hello'),
                SizedBox(height: 50),
                ProductCard(imglink:'assets/bed2.png',name:'Hello'),
                SizedBox(height: 50),
                ProductCard(imglink:'assets/bed3.png',name:'Hello'),
                SizedBox(height: 50),
                ProductCard(imglink:'assets/bed4.png',name:'Hello'),
                SizedBox(height: 50),
                ProductCard(imglink:'assets/bed5.png',name:'Hello'),


                                
              ],
            ),
          )
        ]))
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imglink;
  final String name;
  ProductCard({Key key, @required this.imglink, @required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: 200,
        width: 500,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadiusDirectional.all(Radius.circular(30))),
        child:Stack(children: [
          Positioned(top:20,left:10,child: Text(name,style:TextStyle(color:Colors.white,fontSize: 30))),
          Positioned(top:20,right:10,child: Image.asset(imglink,height:80)),
        ],)
      ),
      onPressed: () {},
    );
  }
}
