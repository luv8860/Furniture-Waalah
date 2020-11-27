import 'package:flutter/material.dart';
import 'package:furniture_waalah/services/product_card.dart';

class Sofa extends StatelessWidget {
  const Sofa({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      
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
            imglink: 'assets/sofa 1.png', name: 'sofa 1', price: '₹15000'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/sofa 2.png', name: 'sofa 2', price: '₹25000'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/sofa 3.png', name: 'sofa 3', price: '₹17500'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/sofa 4.png', name: 'sofa 4', price: '₹19000'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/sofa 5.png', name: 'sofa 5', price: '₹35000'),
      ],
    ),
      )
    ]);
  }
}

