import 'package:aurea/size_app.dart';
import 'package:flutter/material.dart';

class ImageAureaRecipit extends StatefulWidget {
  @override
  _ImageAureaRecipitState createState() => _ImageAureaRecipitState();
}

class _ImageAureaRecipitState extends State<ImageAureaRecipit> {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
        alignment: Alignment(-0, -0.8),
        child: Image.asset('image/aurea.png', height: SizeConfig.blockSizeVertical * 13,),
      );
  }
}