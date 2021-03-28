import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listRecipit.dart';
import 'package:flutter/material.dart';

class DetailPageText extends StatelessWidget {

  final int index;

  const DetailPageText({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Stack(
        children: [
          Align(
            alignment: Alignment(-0.8,0),
            child: Text(listRecipit[index].name, style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 3, color: Colors.black87),)),
          Align(
            alignment: Alignment(0.8,0),
            child: Text(listRecipit[index].min, style: TextStyle(fontSize: SizeConfig.blockSizeVertical * 3, color: Colors.black87),))
    ]);
  }
}