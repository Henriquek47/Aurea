import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class ContainerBackgroundDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
      height: SizeConfig.blockSizeVertical * 70,
      width: SizeConfig.blockSizeHorizontal * 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(55), topLeft: Radius.circular(55)),
        color: Colors.white
      ),
    ));
  }
}