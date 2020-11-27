import 'package:flutter/material.dart';


class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedindex=0;
  List categories=['Bed','Sofa'];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(vertical:10,horizontal: 10),
      height:30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:categories.length,
        itemBuilder: (context,index) => GestureDetector(
          onTap: (){
            setState(() {
              selectedindex=index;
            });
          },
                  child: Container(alignment:Alignment.center
          ,
          margin:EdgeInsets.only(left:10),
          padding:EdgeInsets.symmetric(horizontal:10),
          decoration:BoxDecoration(
            color:index==selectedindex?
              Colors.white.withOpacity(0.4):
              Colors.transparent,
            borderRadius:BorderRadius.circular(6)
          ),
          child:Text(categories[index],style:TextStyle(color:Colors.white))),
        ),
      ),
    );
  }
}


