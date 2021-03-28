import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class ContainerAureaHomePage extends StatefulWidget {
  @override
  _ContainerAureaHomePageState createState() => _ContainerAureaHomePageState();
}

class _ContainerAureaHomePageState extends State<ContainerAureaHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
      alignment: Alignment(0, -1),
      child: SizedBox(
          height: SizeConfig.blockSizeVertical * 45,
          width: SizeConfig.blockSizeHorizontal * 100,
          child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200), bottomRight: Radius.circular(200))),
        ),
    ));
  }
}