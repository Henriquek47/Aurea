import 'package:aurea/pages/productPage/widgetProduct/ContainerYoutube.dart';
import 'package:aurea/pages/productPage/widgetProduct/containerBackgroundProductPage.dart';
import 'package:aurea/pages/productPage/widgetProduct/iconProductProduct.dart';
import 'package:aurea/pages/productPage/widgetProduct/imageAureaProductPage.dart';
import 'package:aurea/pages/productPage/widgetProduct/imageBackgroundProductPage.dart';
import 'package:aurea/pages/productPage/widgetProduct/imageProductProduct.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {

  final int index;

  const ProductPage({Key key, this.index}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      body: Stack(children: [
        ImageBackgroundProductPage(),
        ContainerBackgroundProductPage(index: widget.index,),
        ImageProductProduct(index: widget.index,),
        ContainerYoutube(),
        ImageAureaProductPage(),
        IconProductProcut(index: widget.index,),
      ],),
    );
  }
}