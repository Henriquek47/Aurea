import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class SearchRecipit extends StatefulWidget {
  @override
  _SearchRecipitState createState() => _SearchRecipitState();
}

class _SearchRecipitState extends State<SearchRecipit> {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, -0.41), 
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(240, 128, 6, 1),
        ),
      height: SizeConfig.blockSizeVertical * 5.5,
      width: SizeConfig.blockSizeHorizontal * 75,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Pesquisa', hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(Icons.search, color: Colors.white70,)
        ),
      ),
    )));
  }
}