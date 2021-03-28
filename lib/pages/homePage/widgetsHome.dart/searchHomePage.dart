import 'package:aurea/scopedModel/scopedModel.dart';
import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchHomePage extends StatefulWidget {

  final int index;

  const SearchHomePage({Key key, this.index}) : super(key: key); @override

  _SearchHomePageState createState() => _SearchHomePageState();
}

class _SearchHomePageState extends State<SearchHomePage> {

  TextEditingController controller;
  ScopedItens scopedItens = Modular.get<ScopedItens>();

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, -0.15), 
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
      height: SizeConfig.blockSizeVertical * 5.5,
      width: SizeConfig.blockSizeHorizontal * 80,
      child: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: TextField(
          controller: controller,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Pesquisa',
            icon: Icon(Icons.search)
        ),
          onSubmitted: (text){
        
        },
      ),
    )));
  }
}