import 'package:flutter/material.dart';
import 'package:furniture_waalah/screens/body.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[900],
      appBar: buildAppBar(),
      body:Body()
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title:Text('Dashboard',style:TextStyle(fontSize:30)),
      elevation:0,
      centerTitle:false,
      backgroundColor: Colors.transparent,
      actions: [IconButton(icon: Icon(Icons.notifications_none), onPressed: (){})],
    );
  }
}