import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Details extends StatefulWidget {
  final String imglink;
  final String name;
  final String price;
  Details({Key key, @required this.imglink, this.name, this.price})
      : super(key: key);
  @override
  _DetailsState createState() => _DetailsState(imglink, name, price);
}

class _DetailsState extends State<Details> {
  final String imglink;
  final String name;
  final String price;
  _DetailsState(this.imglink, this.name, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.blue[200],
      body: Container(
          child: Column(
        children: [
          Container(
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(50),
                    bottomEnd: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow),
                      child: Hero(
                          transitionOnUserGestures: true,
                          tag: 'abc$imglink',
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(imglink),
                            ))),
                SizedBox(height:60),
                Text(name,style:TextStyle(fontSize: 50)),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(price,style:TextStyle(fontSize: 20,color: Colors.orange)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AutoSizeText('orem ipsum dolor sit amet, consectetur adipiscing elit. Morbi libero turpis, convallis vitae iaculis ac, congue vitae ex. Sed dictum mi eget mauris placer',maxLines:3,style:TextStyle(fontSize: 30,color:Colors.grey)),
                ),

                ],
              ),
            ),
            SizedBox(height:30),
            Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:Container(
                    height:50,
                    width:250,
                    decoration:BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(15)) ,color:Colors.orange)

                    ,child:FlatButton(onPressed: (){}, child: Text('Proceed to Check Out',style:TextStyle(color:Colors.white)))
                  ),
                ),
        ],
      )),
    );
  }
}
