import 'package:flutter/material.dart';
import 'package:furniture_waalah/services/product_card.dart';

class Bed extends StatelessWidget {
  const Bed({
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
            imglink: 'assets/bed.png', name: 'Bed 1', price: '₹15000'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/bed2.png', name: 'Bed 2', price: '₹25000'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/bed3.png', name: 'Bed 3', price: '₹17500'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/bed4.png', name: 'Bed 4', price: '₹19000'),
        SizedBox(height: 50),
        ProductCard(
            imglink: 'assets/bed5.png', name: 'Bed 5', price: '₹35000'),
      ],
    ),
      )
    ]);
  }
}

