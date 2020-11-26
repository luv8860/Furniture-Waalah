import 'package:flutter/material.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);
final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(5),
      padding:EdgeInsets.symmetric(
        horizontal:5,
        vertical:1
      ),
      decoration:BoxDecoration(
        color:Colors.white.withOpacity(0.4),
        borderRadius:BorderRadius.circular(20)
      ),
      child: TextField(
        onChanged: onChanged,
        style:TextStyle(color:Colors.white),decoration: 
        InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(Icons.search),
          hintText: 'Search',
          hintStyle: TextStyle(color:Colors.white)
        ))
      ,
    );
  }
}