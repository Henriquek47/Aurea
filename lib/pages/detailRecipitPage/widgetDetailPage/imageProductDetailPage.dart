import 'package:aurea/size_app.dart';
import 'package:aurea/util.dart/listRecipit.dart';
import 'package:flutter/material.dart';

class ImageProductDetailPage extends StatefulWidget {

  final int index;

  const ImageProductDetailPage({Key key, this.index}) : super(key: key);

  @override
  _ImageProductDetailPageState createState() => _ImageProductDetailPageState();
}

class _ImageProductDetailPageState extends State<ImageProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Align(
                alignment: Alignment(0, -0.5),
                child: Hero(
                  tag: 'imageRecipi${widget.index}',
                  child: CircleAvatar(
                  maxRadius: SizeConfig.blockSizeVertical * 13,  
                  backgroundImage: NetworkImage(
                    listRecipit[widget.index].img1),
                )));
  }
}