import 'package:flutter/material.dart';
import 'package:furniture_waalah/services/category_list.dart';
import 'package:furniture_waalah/services/product_card.dart';
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
                ProductCard(
                    imglink: 'assets/bed.png', name: 'Hello', price: '₹15000'),
                SizedBox(height: 50),
                ProductCard(
                    imglink: 'assets/bed2.png', name: 'Hello', price: '₹25000'),
                SizedBox(height: 50),
                ProductCard(
                    imglink: 'assets/bed3.png', name: 'Hello', price: '₹17500'),
                SizedBox(height: 50),
                ProductCard(
                    imglink: 'assets/bed4.png', name: 'Hello', price: '₹19000'),
                SizedBox(height: 50),
                ProductCard(
                    imglink: 'assets/bed5.png', name: 'Hello', price: '₹35000'),
              ],
            ),
          )
        ]))
      ],
    );
  }
}

