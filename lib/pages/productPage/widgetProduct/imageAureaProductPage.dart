import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class ImageAureaProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
        alignment: Alignment(0.05, -0.8),
        child: Image.asset('image/aurea.png', height: SizeConfig.blockSizeVertical * 10,),
      );
  }
}