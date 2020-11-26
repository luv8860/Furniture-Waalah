import 'package:flutter/material.dart';
import 'package:furniture_waalah/screens/details.dart';
class ProductCard extends StatelessWidget {
  final String imglink;
  final String name;
  final String price;
  ProductCard(
      {Key key,
      @required this.imglink,
      @required this.name,
      @required this.price})
      : super(key: key);
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
              borderRadius: BorderRadiusDirectional.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0,
                ),
              ]),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: Container(
                  height: 200,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(30),
                          bottomEnd: Radius.circular(30))),
                ),
              ),
              Positioned(
                  top: 20,
                  left: 10,
                  child: Text(name,
                      style: TextStyle(color: Colors.white, fontSize: 30))),
              Positioned(
                  top: 20, right: 10, child: Hero(tag:'abc$imglink',child: Image.asset(imglink, height: 100))),
              Positioned(
                top: 130,
                child: Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(30),
                          bottomStart: Radius.circular(30))),
                  child: Center(
                    child: Text(price,
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              )
            ],
          )),
      onPressed: () {
       Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Details(imglink: imglink,name:name,price:price)));
      },
    );
  }
}
